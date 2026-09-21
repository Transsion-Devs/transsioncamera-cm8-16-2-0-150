.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/ai/AIRequest;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;Lcom/transsion/camera/app/common/ai/AIRequest;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/ai/AIRequest;

    iput p3, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/ai/AIRequest;

    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;->$r8$lambda$SFOnh7ZOv9USl6hAPwjDdXV4HHc(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestOperator;Lcom/transsion/camera/app/common/ai/AIRequest;ILandroid/content/DialogInterface;I)V

    return-void
.end method
