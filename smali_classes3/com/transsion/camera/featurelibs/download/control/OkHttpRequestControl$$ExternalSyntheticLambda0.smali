.class public final synthetic Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

.field public final synthetic f$1:Lcom/transsion/camera/featurelibs/download/Request;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/featurelibs/download/Request;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/featurelibs/download/Request;

    invoke-static {v0, p0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->$r8$lambda$YXjKDcxzBl4wCKBq_4nc5H8U74A(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;)V

    return-void
.end method
