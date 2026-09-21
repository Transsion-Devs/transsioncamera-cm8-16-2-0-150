.class Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->request(Lcom/transsion/camera/featurelibs/download/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;

.field final synthetic val$request:Lcom/transsion/camera/featurelibs/download/Request;


# direct methods
.method public static synthetic $r8$lambda$UGESoJR2yRoMhSN3FMMM6tJGzfA(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->lambda$onSuccess$1(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bxPFVNz4yu-NWG67UzvxKlVdbTM(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->lambda$onFailure$0(Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 3

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFailure$0(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->-$$Nest$fgetmRequestCommandMap(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$onSuccess$1(Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->-$$Nest$fgetmRequestCommandMap(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;I)V
    .registers 5

    .line 34
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->-$$Nest$fgetmRequestExecutor(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;Lcom/transsion/camera/featurelibs/download/Request;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/transsion/camera/featurelibs/download/Request;->onError(IILjava/lang/String;)V

    return-void
.end method

.method public onProgress(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;JJ)V
    .registers 6

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/transsion/camera/featurelibs/download/Request;->onProgress(JJ)V

    return-void
.end method

.method public onSuccess(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;[B)V
    .registers 5

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->this$0:Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->-$$Nest$fgetmRequestExecutor(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    new-instance v1, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;Lcom/transsion/camera/featurelibs/download/Request;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$1;->val$request:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/featurelibs/download/Request;->onSuccess([B)V

    return-void
.end method
