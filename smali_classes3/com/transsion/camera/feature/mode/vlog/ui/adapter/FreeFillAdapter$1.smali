.class Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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
.field final synthetic val$mediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

.field final synthetic val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter;Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)V
    .registers 4

    .line 134
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$1;->val$mediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$1;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition;",
            ")V"
        }
    .end annotation

    .line 137
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$1;->val$mediaItem:Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginSource()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 141
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$1;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetdeleteView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$1;->val$viewHolder:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;->-$$Nest$fgetthumbnailView(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$FreeViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3

    .line 134
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeFillAdapter$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
