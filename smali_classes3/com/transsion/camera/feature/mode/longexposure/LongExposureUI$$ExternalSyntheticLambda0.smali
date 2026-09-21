.class public final synthetic Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/IAppUI;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/IAppUI;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/LongExposureUI;->$r8$lambda$kwAkVmF31ZWTcAmWJwalBKc6UAw(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/feature/mode/longexposure/ui/ShutterUI;

    move-result-object p0

    return-object p0
.end method
