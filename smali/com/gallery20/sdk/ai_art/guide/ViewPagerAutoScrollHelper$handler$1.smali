.class public final Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;


# direct methods
.method constructor <init>(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;->this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    .line 21
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    .line 24
    iget-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;->this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    # getter for: Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {p1}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->access$getViewPager2$p(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget-object v1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;->this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    # getter for: Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;
    invoke-static {v1}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->access$getViewPager2$p(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 25
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;->this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    # invokes: Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->notifyNextAutoScroll()V
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->access$notifyNextAutoScroll(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)V

    :cond_23
    return-void
.end method
