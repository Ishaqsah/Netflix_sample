import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/search/search_bloc.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constand.dart';
import 'package:netflixapp/domain/core/debounce/debounce.dart';
import 'package:netflixapp/presentation/search/widgets/Search_Result.dart';
import 'package:netflixapp/presentation/search/widgets/Search_idel.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});

  final _debounce = Debouncer(milliseconds: 1000);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<SearchBloc>(context).add(initials());
      },
    );
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoSearchTextField(
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.grey.withOpacity(0.2),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Kgreycolor,
              ),
              suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill,
                  color: Kgreycolor),
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                if(value.isEmpty){
                  return;
                }
                _debounce.run(() {
                
                BlocProvider.of<SearchBloc>(context)
                    .add(searchmovie(movieQuery: value));
                });
              },
            ),
          ),
          Expanded(child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              
              return
              state.searchresultlist.isEmpty? 
               SearchIdlewidget(): SearchResultwidget();
            },
          )),
        
        ],
      )),
    );
  }
}
