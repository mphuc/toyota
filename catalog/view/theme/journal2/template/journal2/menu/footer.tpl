<?php foreach ($rows as $row): ?>
<?php if ($row['type'] === 'columns'): ?>
<div class="row columns <?php echo $row['class']; ?>" style="<?php echo $row['css']; ?>">
    <?php foreach ($row['columns'] as $column): ?>
    <div class="column <?php echo $column['class']; ?> <?php echo $column['type']; ?> <?php echo $row['classes']; ?> <?php echo $column['title'] ? '' : 'no-title'; ?>">
        <?php if ($column['title']): ?>
        <h3><?php echo $column['title']; ?></h3>
        <?php endif; ?>
        <?php if($column['type'] === 'menu'): ?>
        <div class="column-menu-wrap" style="<?php echo $column['style']; ?>">
        <ul>
            <?php foreach ($column['items'] as $item): ?>
            <?php if($item['href']): ?>
            <li><a href="<?php echo $item['href']; ?>" <?php echo $item['class']; ?><?php echo $item['target']; ?>><?php echo $item['icon_left']; ?><?php echo $item['name']; ?><?php echo $item['icon_right']; ?></a></li>
            <?php else: ?>
            <li><?php echo $item['target']; ?><?php echo $item['icon_left']; ?><?php echo $item['name']; ?><?php echo $item['icon_right']; ?></li>
            <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        </div>
        <?php elseif ($column['type'] === 'text'): ?>
        <div class="column-text-wrap <?php echo $column['has_icon'] ? 'has-icon': ''; ?> block-icon-<?php echo $column['icon_position']; ?>" style="<?php echo $column['style']; ?>">
            <?php if ($column['has_icon']): ?>
            <div class="block-icon block-icon-<?php echo $column['icon_position']; ?>" style="<?php echo $column['icon_css']; ?>"><?php echo $column['icon']; ?></div>
            <?php endif; ?>
            <span><?php echo $column['text']; ?></span>
        </div>
        <?php elseif ($column['type'] === 'newsletter'): ?>
            <div class="column-wrap" style="<?php echo $column['style']; ?>"><?php echo $column['content']; ?></div>
        <?php elseif ($column['type'] === 'products'): ?>
        <div class="column-wrap" style="<?php echo $column['style']; ?>">
        <?php foreach ($column['products'] as $product) { ?>
        <div class="product-grid-item <?php echo $this->journal2->settings->get('product_grid_classes'); ?> display-<?php echo $this->journal2->settings->get('product_grid_wishlist_icon_display');?> <?php echo $this->journal2->settings->get('product_grid_button_block_button');?>">
            <div class="product-wrapper">
                <?php if ($product['thumb']) { ?>
                <div class="image">
                    <a href="<?php echo $product['href']; ?>">
                        <img width="<?php echo $image_width; ?>" height="<?php echo $image_height; ?>" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
                    </a>
                </div>
                <?php } ?>
                <div class="product-details">
                    <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                    <?php if ($product['price']) { ?>
                    <div class="price">
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                        <?php } else { ?>
                        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <?php if ($product['rating']) { ?>
                    <div class="rating">
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($product['rating'] < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } else { ?>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
        <?php } ?>
        </div>
        <?php elseif ($column['type'] === 'posts'): ?>
        <div class="column-wrap" style="<?php echo $column['style']; ?>">
        <?php foreach ($column['posts'] as $post) { ?>
        <div class="footer-post">
            <?php if ($post['image']): ?>
            <a class="footer-post-image" href="<?php echo $post['href']; ?>"><img src="<?php echo $post['image']; ?>" alt="<?php echo $post['name']; ?>"/></a>
            <?php endif; ?>
            <div class="footer-post-details">
                <a class="footer-post-title" href="<?php echo $post['href']; ?>"><?php echo $post['name']; ?></a>
                <div class="comment-date">
                    <span class="p-date"><?php echo $post['date']; ?></span>
                    <span class="p-comment"><?php echo $post['comments']; ?></span>
                </div>
            </div>
        </div>
        <?php } ?>
        </div>
        <?php endif; ?>
    </div>
    <?php endforeach; ?>
</div>
<?php endif; ?>
<?php if ($row['type'] === 'contacts'): ?>
<div class="row contacts" style="<?php echo $row['css']; ?>">
    <?php if ($row['contacts']['left']): ?>
    <div class="contacts-left">
        <?php foreach ($row['contacts']['left'] as $contact): ?>
            <span class="<?php echo $contact['classes']; ?>" data-hint="<?php echo $contact['name']; ?>"><a <?php echo $contact['target']; ?> class="contact-icon" href="<?php echo $contact['link']; ?>"><?php echo $contact['icon_left']; ?><?php echo $contact['icon_right']; ?></a><a href="<?php echo $contact['link']; ?>"><span class="contacts-text"><?php echo !$contact['tooltip'] ? $contact['name'] : ''; ?></span></a></span>
        <?php endforeach; ?>
    </div>
    <?php endif; ?>
    <?php if ($row['contacts']['right']): ?>
    <div class="contacts-right">
        <?php foreach ($row['contacts']['right'] as $contact): ?>
            <span class="<?php echo $contact['classes']; ?>" data-hint="<?php echo $contact['name']; ?>"><a <?php echo $contact['target']; ?> class="contact-icon" href="<?php echo $contact['link']; ?>"><?php echo $contact['icon_left']; ?><?php echo $contact['icon_right']; ?></a><a href="<?php echo $contact['link']; ?>"><span class="contacts-text"><?php echo !$contact['tooltip'] ? $contact['name'] : ''; ?></span></a></span>
        <?php endforeach; ?>
    </div>
    <?php endif; ?>
</div>
<?php endif; ?>
<?php endforeach; ?>
<style>#callnowbutton {display:none;} @media screen and (max-width:650px){#callnowbutton {display:block; width:100px;right:0;border-bottom-left-radius:40px; border-top-left-radius:40px; height:80px; position:fixed; bottom:-20px; border-top:2px solid #2d93ec; background:url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2aWV3Qm94PSIwIDAgNjAgNjAiPjxwYXRoIGQ9Ik03LjEwNCAxNC4wMzJsMTUuNTg2IDEuOTg0YzAgMC0wLjAxOSAwLjUgMCAwLjk1M2MwLjAyOSAwLjc1Ni0wLjI2IDEuNTM0LTAuODA5IDIuMSBsLTQuNzQgNC43NDJjMi4zNjEgMy4zIDE2LjUgMTcuNCAxOS44IDE5LjhsMTYuODEzIDEuMTQxYzAgMCAwIDAuNCAwIDEuMSBjLTAuMDAyIDAuNDc5LTAuMTc2IDAuOTUzLTAuNTQ5IDEuMzI3bC02LjUwNCA2LjUwNWMwIDAtMTEuMjYxIDAuOTg4LTI1LjkyNS0xMy42NzRDNi4xMTcgMjUuMyA3LjEgMTQgNy4xIDE0IiBmaWxsPSIjMDAzNDhkIi8+PHBhdGggZD0iTTcuMTA0IDEzLjAzMmw2LjUwNC02LjUwNWMwLjg5Ni0wLjg5NSAyLjMzNC0wLjY3OCAzLjEgMC4zNWw1LjU2MyA3LjggYzAuNzM4IDEgMC41IDIuNTMxLTAuMzYgMy40MjZsLTQuNzQgNC43NDJjMi4zNjEgMy4zIDUuMyA2LjkgOS4xIDEwLjY5OWMzLjg0MiAzLjggNy40IDYuNyAxMC43IDkuMSBsNC43NC00Ljc0MmMwLjg5Ny0wLjg5NSAyLjQ3MS0xLjAyNiAzLjQ5OC0wLjI4OWw3LjY0NiA1LjQ1NWMxLjAyNSAwLjcgMS4zIDIuMiAwLjQgMy4xMDVsLTYuNTA0IDYuNSBjMCAwLTExLjI2MiAwLjk4OC0yNS45MjUtMTMuNjc0QzYuMTE3IDI0LjMgNy4xIDEzIDcuMSAxMyIgZmlsbD0iI2ZmZiIvPjwvc3ZnPg==) center 2px no-repeat #0066bf; text-decoration:none; box-shadow:0 0 5px #888; z-index:9999;background-size:58px 58px}}</style>

<a href="tel:0977789575" id="callnowbutton" >&nbsp;</a>   
<style>
.support-icon-right {
    background: #F0F3EF;
    position: fixed;
    left: 0;
    bottom: 0;
    z-index: 999999999;
    overflow: hidden;
    width: 250px;
    color: #fff!important;
    -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
    -ms-transition: all 0.3s;
    -o-transition: all 0.3s;
    transition: all 0.3s;
}

.support-icon-right h3 {
    text-transform: uppercase;
    font-weight: bold;
    font-size: 13px!important;
    font-family: Arial;
    color: #fff!important;
    margin: 0!important;
    background-color: #5CB85C;
    cursor: pointer;
}

.support-icon-right i {
    background-color: #D9534F;
    padding: 15px 15px 12px 15px;
}
.online-support {
    display: none;
}
</style>


<div class="support-icon-right">
<h3><i class="fa fa-hand-o-right"></i>   Mr Việt : 0977.789.575</h3>
</div>
