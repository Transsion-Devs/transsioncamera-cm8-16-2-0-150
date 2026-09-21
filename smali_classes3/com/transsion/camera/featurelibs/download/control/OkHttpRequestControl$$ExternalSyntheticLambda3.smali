.class public final synthetic Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

.field public final synthetic f$1:Lcom/transsion/camera/featurelibs/download/Request;

.field public final synthetic f$2:Lokhttp3/OkHttpClient;

.field public final synthetic f$3:Lokhttp3/Call;

.field public final synthetic f$4:Lokhttp3/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;Lokhttp3/Call;Lokhttp3/Callback;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;->f$1:Lcom/transsion/camera/featurelibs/download/Request;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;->f$2:Lokhttp3/OkHttpClient;

    iput-object p4, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;->f$3:Lokhttp3/Call;

    iput-object p5, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;->f$4:Lokhttp3/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;->f$1:Lcom/transsion/camera/featurelibs/download/Request;

    iget-object v2, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;->f$2:Lokhttp3/OkHttpClient;

    iget-object v3, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;->f$3:Lokhttp3/Call;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl$$ExternalSyntheticLambda3;->f$4:Lokhttp3/Callback;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;->$r8$lambda$Ii2YWidIMzGVD2FHQYgxJTNEcps(Lcom/transsion/camera/featurelibs/download/control/OkHttpRequestControl;Lcom/transsion/camera/featurelibs/download/Request;Lokhttp3/OkHttpClient;Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method
