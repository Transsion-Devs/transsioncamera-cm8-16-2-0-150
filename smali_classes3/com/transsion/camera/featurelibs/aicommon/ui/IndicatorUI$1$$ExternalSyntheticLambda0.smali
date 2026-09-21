.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;

    invoke-static {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;->$r8$lambda$BO_Vrbu8WaOeQ23xVEN6dOWWUYY(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V

    return-void
.end method
