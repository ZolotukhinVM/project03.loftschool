<?php get_header(); ?>
    <div class="content-wrapper">
    <div class="content">
        <h1 class="title-page">Главная/Новости</h1>
        <div class="posts-list">
            <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
                <div class="post-wrap">
                    <div class="post-thumbnail"><img src="<?php the_post_thumbnail_url() ?>" alt="Image поста"
                                                     class="post-thumbnail__image"></div>
                    <div class="post-content">
                        <div class="post-content__post-info">
                            <div class="post-date"><?php the_date() ?></div>
                        </div>
                        <div class="post-content__post-text">
                            <div class="post-title"><?php the_title() ?></div>
                                <p><?php the_content() ?></p>
                        </div>
                        <div class="post-content__post-control">
                            <a href="<?php the_permalink() ?>" class="btn-read-post">
                                Читать далее >>
                            </a>
                        </div>
                    </div>
                </div>
            <? endwhile; endif; ?>
        </div>
        <div class="pagenavi-post-wrap"><a href="#" class="pagenavi-post__prev-postlink">
                <?php paginate_links() ?>
        </div>
    </div>
<?php
get_footer();
