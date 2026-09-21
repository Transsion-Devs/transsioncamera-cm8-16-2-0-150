.class Lcom/transsion/camera/app/common/mode/CameraOperateAction$6;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraOperateAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 4

    .line 757
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/16 v0, 0xe

    .line 759
    new-array v1, v0, [I

    fill-array-data v1, :array_1c

    const/16 v2, 0x3e9

    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0xd

    .line 774
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    nop

    :array_1c
    .array-data 4
        0xf
        0xb
        0x15
        0x22
        0x28
        0x2e
        0xe9
        0xc
        0x16
        0x23
        0x29
        0x2f
        0xea
        0x5d
    .end array-data
.end method
