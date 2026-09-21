.class Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6;
.super Landroid/util/SparseArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;
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

    .line 170
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 172
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6$1;-><init>(Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6;)V

    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6$2;-><init>(Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6;)V

    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6$3;-><init>(Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6;)V

    const/16 v1, 0x68

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6$4;-><init>(Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6;)V

    const/16 v1, 0x69

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 212
    invoke-static {}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->-$$Nest$sfgetMAX_COUNT_LOW_MEM()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 213
    invoke-static {}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->-$$Nest$sfgetMAX_COUNT_LIMIT_MEM()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
