.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;
.super Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMarginBottom:I

.field private final mMarginTop:I

.field private mScreenFormType:I

.field private final mSupportFreeShot:Z

.field private final mTemplateTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_IndicatorAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mTemplateTypes:Ljava/util/List;

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_indicator_margin_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mMarginTop:I

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_indicator_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mMarginBottom:I

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/vlog/R$bool;->vlog_mode_support_free_shot:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mSupportFreeShot:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mTemplateTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_1c

    .line 50
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    if-nez p1, :cond_16

    .line 51
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mSupportFreeShot:Z

    if-eqz v1, :cond_16

    .line 52
    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->template_type_freeshot_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_1c

    .line 54
    :cond_16
    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->template_type_name_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_1c
    :goto_1c
    if-eqz p2, :cond_7f

    .line 59
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mTemplateTypes:Ljava/util/List;

    if-nez p3, :cond_23

    goto :goto_7f

    .line 64
    :cond_23
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_type_name_first_margin_left:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 66
    instance-of v1, p2, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    .line 67
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->freeshot_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_47

    .line 69
    :cond_3d
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    if-ne p1, v2, :cond_47

    .line 70
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mSupportFreeShot:Z

    if-eqz v3, :cond_47

    move p3, v0

    .line 74
    :cond_47
    :goto_47
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mTemplateTypes:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mMarginTop:I

    iget v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mMarginBottom:I

    invoke-virtual {v1, v0, v3, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p1, :cond_6b

    .line 79
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mScreenFormType:I

    if-eq p0, v2, :cond_66

    goto :goto_67

    :cond_66
    move p3, v0

    :goto_67
    invoke-virtual {v3, p3, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_7b

    .line 80
    :cond_6b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mTemplateTypes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    if-ge p1, p0, :cond_78

    .line 81
    invoke-virtual {v3, p3, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_7b

    .line 83
    :cond_78
    invoke-virtual {v3, p3, v0, p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 86
    :goto_7b
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2

    .line 60
    :cond_7f
    :goto_7f
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateScreenFormType(I)V
    .registers 2

    .line 38
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/IndicatorAdapter;->mScreenFormType:I

    return-void
.end method
