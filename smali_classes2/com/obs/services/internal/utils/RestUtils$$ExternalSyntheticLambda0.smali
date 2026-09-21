.class public final synthetic Lcom/obs/services/internal/utils/RestUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public final synthetic f$0:Lcom/obs/services/internal/ObsProperties;


# direct methods
.method public synthetic constructor <init>(Lcom/obs/services/internal/ObsProperties;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/utils/RestUtils$$ExternalSyntheticLambda0;->f$0:Lcom/obs/services/internal/ObsProperties;

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/obs/services/internal/utils/RestUtils$$ExternalSyntheticLambda0;->f$0:Lcom/obs/services/internal/ObsProperties;

    invoke-static {p0, p1, p2}, Lcom/obs/services/internal/utils/RestUtils;->$r8$lambda$uuAIyVtdk7ey5JCVbVsAicxBrTo(Lcom/obs/services/internal/ObsProperties;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method
