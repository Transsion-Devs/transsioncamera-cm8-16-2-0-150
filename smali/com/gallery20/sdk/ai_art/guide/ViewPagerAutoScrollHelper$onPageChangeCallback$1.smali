.class public final Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
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
.method constructor <init>(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;->this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    .line 35
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrollStateChanged() called with: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPagerAutoScrollHelp"

    invoke-static {v1, v0}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    return-void

    .line 39
    :cond_1f
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;->this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    # getter for: Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->handler:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->access$getHandler$p(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$handler$1;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_2a
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;->this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    # invokes: Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->checkNotifyNextAutoScroll()V
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->access$checkNotifyNextAutoScroll(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper$onPageChangeCallback$1;->this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;

    # getter for: Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->adapter:Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;->access$getAdapter$p(Lcom/gallery20/sdk/ai_art/guide/ViewPagerAutoScrollHelper;)Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/guide/AIArtGuideAdapter;->restoreScrollPositionForExtraPage()V

    return-void
.end method
