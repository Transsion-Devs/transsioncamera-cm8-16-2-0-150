.class public Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;
.super Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;


# instance fields
.field private mDrawableHighLightValueView:Landroid/widget/ImageView;

.field private mDrawableValueView:Landroid/widget/ImageView;

.field private mIsFinishInflated:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mValueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mIsFinishInflated:Z

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 41
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 42
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_setting_item_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mTitleView:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_setting_item_value:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_setting_item_drawable_value:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableValueView:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_item_drawable_high_value:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableHighLightValueView:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->pro_item_view_shadow_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mTitleView:Landroid/widget/TextView;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mIsFinishInflated:Z

    return-void
.end method

.method public bridge synthetic setOrientation(IZLcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZLcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V

    return-void
.end method

.method public updateDrawable(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Z)V
    .registers 3

    return-void
.end method

.method public updateSubTitleAlpha(F)V
    .registers 6

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableValueView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 102
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/high16 v0, 0x3f800000    # 1.0f

    .line 103
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-nez p1, :cond_3c

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/professional/R$color;->pro_item_value_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableValueView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableHighLightValueView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 109
    :cond_3c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableValueView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableHighLightValueView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4c
    return-void
.end method

.method public updateTitleColor(I)V
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public updateValue(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V
    .registers 8

    .line 55
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mIsFinishInflated:Z

    if-nez v0, :cond_5

    goto :goto_60

    :cond_5
    if-eqz p1, :cond_60

    .line 59
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryExtDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 63
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryExtHighLightDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 65
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-static {v2, p2}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_60

    const/4 v0, 0x0

    if-eqz v3, :cond_2c

    .line 70
    aget-object v2, v3, p2

    goto :goto_2d

    :cond_2c
    move-object v2, v0

    :goto_2d
    if-eqz v2, :cond_49

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableValueView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableHighLightValueView:Landroid/widget/ImageView;

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 79
    :cond_49
    aget-object p1, v1, p2

    .line 80
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mValueView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableValueView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalSettingItemView;->mDrawableHighLightValueView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_60
    :goto_60
    return-void
.end method
