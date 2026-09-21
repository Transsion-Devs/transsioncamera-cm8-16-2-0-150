.class Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Landroid/util/SparseArray<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 85
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4$1;-><init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4;)V

    const/16 v1, 0xc8

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4$2;-><init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4;)V

    const/16 v1, 0xc9

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4$3;-><init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4;)V

    const/16 v1, 0xca

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
