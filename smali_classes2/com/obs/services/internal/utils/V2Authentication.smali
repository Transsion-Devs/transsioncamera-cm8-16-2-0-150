.class public Lcom/obs/services/internal/utils/V2Authentication;
.super Lcom/obs/services/internal/utils/AbstractAuthentication;
.source "SourceFile"


# static fields
.field private static instance:Lcom/obs/services/internal/utils/V2Authentication;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/obs/services/internal/utils/V2Authentication;

    invoke-direct {v0}, Lcom/obs/services/internal/utils/V2Authentication;-><init>()V

    sput-object v0, Lcom/obs/services/internal/utils/V2Authentication;->instance:Lcom/obs/services/internal/utils/V2Authentication;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/obs/services/internal/utils/AbstractAuthentication;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/obs/services/internal/utils/AbstractAuthentication;
    .registers 1

    .line 29
    sget-object v0, Lcom/obs/services/internal/utils/V2Authentication;->instance:Lcom/obs/services/internal/utils/V2Authentication;

    return-object v0
.end method


# virtual methods
.method protected getAuthPrefix()Ljava/lang/String;
    .registers 1

    .line 39
    const-string p0, "AWS"

    return-object p0
.end method

.method protected getIHeaders()Lcom/obs/services/internal/IHeaders;
    .registers 1

    .line 34
    invoke-static {}, Lcom/obs/services/internal/V2Headers;->getInstance()Lcom/obs/services/internal/IHeaders;

    move-result-object p0

    return-object p0
.end method
