.class interface abstract Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$IType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "IType"
.end annotation


# virtual methods
.method public abstract exit()V
.end method

.method public abstract getContentWidth()F
.end method

.method public abstract getItemByRatio(I)Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$ZoomItem;
.end method

.method public abstract getType()I
.end method

.method public abstract getZoomItemNum()I
.end method

.method public abstract getZoomItems()Ljava/util/List;
.end method

.method public abstract isOutOfContent(FF)Z
.end method

.method public abstract onCurrentItemSelected()V
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public onLongPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract updateItemPosition()V
.end method
