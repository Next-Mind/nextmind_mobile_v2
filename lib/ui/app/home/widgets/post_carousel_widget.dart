import 'package:flutter/material.dart';
import 'package:nextmind_mobile_v2/config/dependencies.dart';
import 'package:nextmind_mobile_v2/ui/app/home/viewmodels/post_carousel_viewmodel.dart';
import 'package:nextmind_mobile_v2/ui/app/home/widgets/post_card_widget.dart';
import 'package:result_command/result_command.dart';

class PostCarousel extends StatelessWidget {
  const PostCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final PostCarouselViewmodel viewModel = injector.get();
    return SizedBox(
      height: 320,
      child: ListenableBuilder(
        listenable: viewModel.fetchPostsCommand,
        builder: (context, child) {
          return viewModel.fetchPostsCommand.value is RunningCommand
              ? Center(child: CircularProgressIndicator())
              : PageView.builder(
                  itemCount: viewModel.posts.length,
                  controller: PageController(viewportFraction: 0.8),
                  itemBuilder: (context, index) {
                    final item = viewModel.posts[index];
                    return PostCard(post: item);
                  },
                );
        },
      ),
    );
  }
}
