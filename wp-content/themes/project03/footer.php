<!-- sidebar-->
<div class="sidebar">
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Категории</div>
        <div class="sidebar-item__content">
            <ul class="category-list">
                   <?php foreach (get_categories() as $cat): ?>
                    <li class="category-list__item">
                        <a href="<?php echo get_term_link($cat); ?>" class="category-list__item__link"><?php echo $cat->name; ?></a>
                    </li>
                <?php endforeach ?>
            </ul>
        </div>
    </div>
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Теги</div>
        <div class="sidebar-item__content">
            <ul class="tags-list">
                <?php foreach (get_tags() as $tags): ?>
                    <li class="tags-list__item">
                        <a href="/tag/<?php echo $tags->slug ?>" class="tags-list__item__link">
                            <?php echo $tags->name ?>
                        </a>
                    </li>
                <? endforeach; ?>
            </ul>
        </div>
    </div>
    <div class="sidebar__sidebar-item">
        <div class="sidebar-item__title">Календарь</div>
        <div class="sidebar-item__content">
            <?php get_calendar(); ?>
        </div>
    </div>
</div>
</div>
</div>
<footer class="main-footer">
    <div class="content-footer">
        <div class="bottom-menu">
            <ul class="b-menu__list">
                <li class="b-menu__list__item"><a href="/" class="b-menu__list__item__link">Главная</a></li>
                <li class="b-menu__list__item"><a href="/about" class="b-menu__list__item__link">О сервисе</a></li>
            </ul>
        </div>
        <div class="copyright-wrap">
            <div class="copyright-text">Loftschool<a href="/" class="copyright-text__link"> Project03 <?php echo date("Y") ?></a></div>
        </div>
    </div>
</footer>
</div>
<!-- wrapper_end-->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="js/main.js"></script>
<?php wp_footer(); ?>
</body>
</html>