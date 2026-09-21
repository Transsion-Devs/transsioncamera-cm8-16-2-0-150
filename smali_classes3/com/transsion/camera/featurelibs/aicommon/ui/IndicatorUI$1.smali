.class Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ai/AIRequestHolder$IRequestStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;


# direct methods
.method public static synthetic $r8$lambda$BO_Vrbu8WaOeQ23xVEN6dOWWUYY(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;->lambda$onRequestStatusChanged$0(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRequestStatusChanged$0(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmIndicatorRoot(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_14

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmTag(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mIndicatorRoot is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$mupdateIndicator(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V

    return-void
.end method


# virtual methods
.method public onRequestStatusChanged(Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fputmRequestStatusInfo(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V

    .line 177
    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$1;Lcom/transsion/camera/app/common/ai/AIRequestStatusInfo;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
