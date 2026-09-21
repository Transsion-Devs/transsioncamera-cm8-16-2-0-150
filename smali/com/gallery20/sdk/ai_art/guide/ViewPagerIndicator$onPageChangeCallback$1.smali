.class public final Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator$onPageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;


# direct methods
.method constructor <init>(Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator$onPageChangeCallback$1;->this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;

    .line 25
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 4

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected() called with: position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewPagerIndicator"

    invoke-static {v0, p1}, Lcom/gallery20/base/LogExtKt;->ld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator$onPageChangeCallback$1;->this$0:Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;

    # invokes: Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->updateSelect()V
    invoke-static {p0}, Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;->access$updateSelect(Lcom/gallery20/sdk/ai_art/guide/ViewPagerIndicator;)V

    return-void
.end method
