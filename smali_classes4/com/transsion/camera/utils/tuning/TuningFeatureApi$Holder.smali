.class abstract Lcom/transsion/camera/utils/tuning/TuningFeatureApi$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/tuning/TuningFeatureApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field public static final sInstance:Lcom/transsion/camera/utils/tuning/TuningFeatureApi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 124
    new-instance v0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;-><init>(Lcom/transsion/camera/utils/tuning/TuningFeatureApi-IA;)V

    sput-object v0, Lcom/transsion/camera/utils/tuning/TuningFeatureApi$Holder;->sInstance:Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    return-void
.end method
