.class Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5;
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

    .line 123
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 125
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5$1;-><init>(Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5;)V

    const/16 v1, 0x65

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5$2;-><init>(Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5;)V

    const/16 v1, 0x66

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5$3;-><init>(Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5;)V

    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5$4;-><init>(Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5;)V

    const/16 v1, 0x68

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 165
    invoke-static {}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->-$$Nest$sfgetMAX_COUNT_LOW_MEM()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 166
    invoke-static {}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->-$$Nest$sfgetMAX_COUNT_LIMIT_MEM()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
