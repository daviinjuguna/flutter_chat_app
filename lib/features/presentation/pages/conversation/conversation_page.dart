import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterchatapp/core/routes/router.gr.dart';
import 'package:flutterchatapp/core/utils/constants.dart';
import 'package:flutterchatapp/core/utils/size_config.dart';
import 'package:flutterchatapp/features/data/model/get_conversation_model.dart';
import 'package:flutterchatapp/features/presentation/bloc/get_conversation_bloc/get_conversation_bloc.dart';
import 'package:flutterchatapp/features/presentation/bloc/post_bloc/post_message_bloc.dart';
import 'package:flutterchatapp/features/presentation/widgets/components/custom_dialogue.dart';
import 'package:flutterchatapp/features/presentation/widgets/conversation/conversation_card.dart';
import 'package:flutterchatapp/features/presentation/widgets/conversation/list_selection.dart';
import 'package:flutterchatapp/injection.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class ConversationPage extends StatefulWidget {
  ConversationPage({Key key}) : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> with AutomaticKeepAliveClientMixin{
  // GetConversationModel conversation;
  // String message;
  GetConversationBloc _bloc;

  @override
  void initState() {
    _bloc = getIt<GetConversationBloc>();
    _bloc.add(GetConversationEvent.getConversation());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider<GetConversationBloc>(
      create: (_) => _bloc,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                LineAwesomeIcons.search,
                color: Style.primaryColor,
              ),
              onPressed: null),
          title: Text(
            "Messages",
            style: TextStyle(color: Style.primaryColor),
          ),
          centerTitle: true,
          backgroundColor: Style.darkColor,
        ),
        // body: BlocConsumer<GetConversationBloc, GetConversationState>(
        //   listener: (context, state) {
        //     state.map(
        //       initial: (e)=>CircularProgressIndicator(),
        //       success: (e){
        //         conversation = e.data;
        //       },
        //       error: (e){
        //         errorDialogue(
        //           context,
        //           e.message,
        //           ()=>_bloc.add(GetConversationEvent.getConversation()),//refresh
        //           (){}//cancel
        //         )..show();
        //       }
        //     );
        //   },
        //   builder: (context, state) {
        //     return Center(
              // child: ListView.builder(
              //   itemCount: conversation.data.length,
              //   padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
              //   itemBuilder: (context,index){
              //     return ConversationCard(
              //       data: conversation.data[index], 
              //       onTap: ()=>ExtendedNavigator.of(context).pushChatPage(data: conversation.data[index],),
              //     );
              //   },
              // ),
        //       child: ConversationListView(
        //         listObject: conversation, 
        //         // onTap: (conversation.data){ExtendedNavigator.of(context).pushChatPage()},
        //       ),
        //     );
        //   },
        // ),
        body: BlocBuilder<GetConversationBloc,GetConversationState>(
          builder: (context,state){
            if (state is GetConversationLoading) {
              return Center(child: CircularProgressIndicator(
                backgroundColor: Colors.yellowAccent,
                valueColor: new AlwaysStoppedAnimation<Color>(Style.primaryColor),
              ),);
            }else if (state is GetConversationSeccess) {
              final conversation = state.data;
              return _buildConversationList(context,conversation);
            }else if (state is GetConversationError) {
              errorDialogue(
                  context,
                  state.message,
                  ()=>_bloc.add(GetConversationEvent.getConversation()),//refresh
                  (){}//cancel
                )..show();
            }else{
              return Container();
            }
          }
        ),
      ),
    );
  }

  //! Jemmo pleae exctract this method.....name it Conversation Card
  ListView _buildConversationList(BuildContext context, GetConversationModel conversation){
    SizeConfig().init(context);
    return ListView.builder(
      itemCount:conversation.data.length,
      padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 0.8),
      itemBuilder: (context,index)=>Column(
         children: <Widget>[
        ListTile(
          onTap: ()=>ExtendedNavigator.of(context).pushChatPage(data: conversation.data[index]),
          leading: ClipOval(
            child: Image.network(
              conversation.data[index].user.imageUrl != null
               ?conversation.data[index].user.imageUrl
               :'https://ramcotubular.com/wp-content/uploads/default-avatar.jpg',//TODO impliment images,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
               Text(conversation.data[index].user.name,//machina ya wazito
                  style: TextStyle(color: Style.primaryColor.withOpacity(.8),fontSize: 18),),
               Text(timeago.format(DateTime.parse(conversation.data[index].messages.last.createdAt)),//last texted at
                  style: TextStyle(color: Style.primaryColor.withOpacity(.8),fontSize: 14),),
            ],
          ),
          subtitle: Text(conversation.data[index].messages.last.body,//text ok ze last text
              style: TextStyle(color: Colors.white),),
        ),
        Divider(
          color: Style.primaryColor.withOpacity(.5),
          indent: SizeConfig.blockSizeHorizontal * 20,
          endIndent: SizeConfig.blockSizeHorizontal * 4,
        )
      ],
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
