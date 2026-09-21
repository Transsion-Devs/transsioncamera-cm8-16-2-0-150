.class Lcom/obs/services/internal/security/ProviderCredentialThreadContext$ProviderCredentialThreadContextHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/security/ProviderCredentialThreadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderCredentialThreadContextHolder"
.end annotation


# static fields
.field private static instance:Lcom/obs/services/internal/security/ProviderCredentialThreadContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;-><init>(Lcom/obs/services/internal/security/ProviderCredentialThreadContext$1;)V

    sput-object v0, Lcom/obs/services/internal/security/ProviderCredentialThreadContext$ProviderCredentialThreadContextHolder;->instance:Lcom/obs/services/internal/security/ProviderCredentialThreadContext;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/obs/services/internal/security/ProviderCredentialThreadContext;
    .registers 1

    .line 25
    sget-object v0, Lcom/obs/services/internal/security/ProviderCredentialThreadContext$ProviderCredentialThreadContextHolder;->instance:Lcom/obs/services/internal/security/ProviderCredentialThreadContext;

    return-object v0
.end method
