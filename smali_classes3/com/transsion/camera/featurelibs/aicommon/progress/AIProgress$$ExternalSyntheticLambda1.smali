.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;

    iput p2, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;

    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/progress/AIProgress;->$r8$lambda$9FBICufB-XWx2MqR_N47ocoF-S8(Lcom/transsion/camera/featurelibs/aicommon/progress/IAIProgress$IProgressListener;I)V

    return-void
.end method
