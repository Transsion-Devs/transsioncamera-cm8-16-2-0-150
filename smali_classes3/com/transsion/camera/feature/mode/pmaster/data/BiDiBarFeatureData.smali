.class public Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SEEK_BAR_FEATURE_CONFIG_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mSeekBarMax:I

.field public final mSeekBarMin:I

.field public final mSeekBarOptimal:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;->SEEK_BAR_FEATURE_CONFIG_MAP:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;->mSeekBarMax:I

    .line 15
    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;->mSeekBarMin:I

    .line 16
    iput p3, p0, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;->mSeekBarOptimal:I

    return-void
.end method

.method public static getSeekBarFeatureDataByFeatureId(I)Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;
    .registers 3

    .line 36
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;->SEEK_BAR_FEATURE_CONFIG_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 37
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/pmaster/data/BiDiBarFeatureData;

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method
