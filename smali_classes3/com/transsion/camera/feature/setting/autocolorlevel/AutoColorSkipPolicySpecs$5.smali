.class Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5;
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

    .line 118
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 120
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5$1;-><init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5;)V

    const/16 v1, 0xc8

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5$2;-><init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5;)V

    const/16 v1, 0xc9

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5$3;-><init>(Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5;)V

    const/16 v1, 0xca

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
