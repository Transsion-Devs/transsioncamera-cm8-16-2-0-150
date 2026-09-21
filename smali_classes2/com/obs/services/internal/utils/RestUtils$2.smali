.class final Lcom/obs/services/internal/utils/RestUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/internal/utils/RestUtils;->initHttpProxy(Lokhttp3/OkHttpClient$Builder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$proxyPassword:Ljava/lang/String;

.field final synthetic val$proxyUser:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 460
    iput-object p1, p0, Lcom/obs/services/internal/utils/RestUtils$2;->val$proxyUser:Ljava/lang/String;

    iput-object p2, p0, Lcom/obs/services/internal/utils/RestUtils$2;->val$proxyPassword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .registers 3

    .line 463
    iget-object p1, p0, Lcom/obs/services/internal/utils/RestUtils$2;->val$proxyUser:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/internal/utils/RestUtils$2;->val$proxyPassword:Ljava/lang/String;

    invoke-static {p1, p0}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 464
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    const-string p2, "Proxy-Authorization"

    invoke-virtual {p1, p2, p0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method
