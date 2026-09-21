.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/aicommon/saver/AIMediaSaver$ISaverListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;

.field public final synthetic f$1:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

.field public final synthetic f$2:Lcom/transsion/camera/app/common/ai/AIRequest;

.field public final synthetic f$3:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/camera/app/common/ai/AIRequest;

    iput-object p4, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;->f$3:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    return-void
.end method


# virtual methods
.method public final onSaved(Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/camera/app/common/ai/AIRequest;

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2$$ExternalSyntheticLambda0;->f$3:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;->$r8$lambda$yUCcEx7rLJ6fM9Vbq78_JThDHzg(Lcom/transsion/camera/featurelibs/aicommon/request/RequestManager$2;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Landroid/net/Uri;Ljava/lang/String;[B)V

    return-void
.end method
