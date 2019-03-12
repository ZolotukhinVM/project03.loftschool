<?php get_header() ?>
<div class="content-wrapper">
    <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
        <div class="content">
            <div class="article-title title-page"><?php the_title(); ?></div>
            <div class="article-image"><img src="<?php the_post_thumbnail_url() ?>" alt="Image поста"></div>
            <div class="article-info">
                <div class="post-date"><?php the_date(); ?></div>
            </div>
            <div class="article-text"><?php the_content(); ?></div>
            <div class="article-text"><?php echo get_field('stock_description'); ?></div>
            <div class="article-pagination">
                <div class="article-pagination__block pagination-prev-left"><?php previous_post_link() ?>
                    <div class="wrap-pagination-preview pagination-prev-left">
                    </div>
                </div>
                <div class="article-pagination__block pagination-prev-right"><?php next_post_link() ?>
                    <div class="wrap-pagination-preview pagination-prev-right">
                    </div>
                </div>
            </div>
        </div>
    <? endwhile; endif; ?>
    <?php get_footer() ?>
