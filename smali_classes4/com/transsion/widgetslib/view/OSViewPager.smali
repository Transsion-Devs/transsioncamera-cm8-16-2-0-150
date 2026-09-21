.class public final Lcom/transsion/widgetslib/view/OSViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/widgetslib/view/OSViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 12
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/view/OSViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setCurrentItem(I)V
    .registers 3

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/view/OSViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    if-nez p2, :cond_7

    .line 22
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 24
    :goto_8
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    if-nez p2, :cond_21

    if-ne v0, p1, :cond_10

    goto :goto_21

    .line 29
    :cond_10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_21

    if-eqz p0, :cond_21

    .line 32
    sget-object p1, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;->INSTANCE:Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/widgetslib/util/ViewPager2PageChangeHelper;->magicShow(Landroid/view/View;Landroid/view/View;)V

    :cond_21
    :goto_21
    return-void
.end method
