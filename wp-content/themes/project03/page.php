<?php get_header() ?>
    <div class="content-wrapper">
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
    <div class="content">
        <h1 class="title-page"><?php the_title() ?></h1>
        <img src="<?php the_post_thumbnail_url() ?>" alt="Image" class="alignleft">
        <?php the_content(); ?>
    </div>
<?php endwhile; endif; ?>
<?php get_footer() ?>

