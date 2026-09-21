.class public abstract Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBoxFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static makeMoreDragBox(Landroid/content/Context;I)Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreDragBox;
    .registers 2

    if-nez p1, :cond_8

    .line 20
    new-instance p1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreGridTypeDragBox;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 22
    :cond_8
    new-instance p1, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/dragdrop/MoreLinearTypeDragBox;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
