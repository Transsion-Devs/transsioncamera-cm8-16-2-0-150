.class Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget;"
    }
.end annotation


# instance fields
.field final synthetic val$holder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;

.field final synthetic val$mediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;)V
    .registers 4

    .line 119
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$1;->val$mediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$1;->val$holder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition;",
            ")V"
        }
    .end annotation

    .line 122
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$1;->val$mediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$1;->val$holder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivCoverItem:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 119
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
