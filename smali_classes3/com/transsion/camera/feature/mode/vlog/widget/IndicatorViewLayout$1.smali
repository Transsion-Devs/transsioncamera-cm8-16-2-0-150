.class Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 13

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$mgetTabCountInLayout(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmAdapter(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->getCount()I

    move-result v1

    .line 154
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmStoreMonitor(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->getIndicatorIndex()I

    move-result v2

    .line 155
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmViews(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    move v4, v3

    :goto_25
    if-ge v4, v0, :cond_3d

    if-ge v4, v1, :cond_3d

    .line 157
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmViews(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v6, v4}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$mgetItemOutView(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 159
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmViews(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v3

    :goto_4d
    if-ge v4, v1, :cond_f0

    .line 162
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    if-ge v4, v0, :cond_87

    .line 165
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmViews(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 166
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmViews(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmAdapter(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    move-result-object v8

    invoke-virtual {v8, v4, v7, v5}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_91

    .line 169
    :cond_87
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmAdapter(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    move-result-object v7

    invoke-virtual {v7, v4, v6, v5}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 174
    :goto_91
    instance-of v8, v7, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_a4

    .line 175
    sget v8, Lcom/transsion/camera/feature/vlog/R$id;->freeshot_title:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 176
    sget v9, Lcom/transsion/camera/feature/vlog/R$id;->freeshot_title_container:I

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_a8

    .line 178
    :cond_a4
    move-object v8, v7

    check-cast v8, Landroid/widget/TextView;

    move-object v9, v5

    :goto_a8
    if-nez v8, :cond_ab

    goto :goto_ec

    :cond_ab
    if-ne v4, v2, :cond_b8

    .line 187
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/transsion/camera/feature/vlog/R$color;->vlog_template_category_name_text_selected_color:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    goto :goto_c2

    .line 188
    :cond_b8
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/transsion/camera/feature/vlog/R$color;->vlog_template_category_name_text_default_color:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    .line 186
    :goto_c2
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x3f6b851f    # 0.92f

    .line 189
    invoke-static {v9, v8, v6}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 190
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->-$$Nest$fgetmOnClickListener(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {v5, v3}, Landroid/view/View;->setFocusable(Z)V

    :goto_ec
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4d

    .line 197
    :cond_f0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->setCurrentItem(IZ)V

    return-void
.end method
