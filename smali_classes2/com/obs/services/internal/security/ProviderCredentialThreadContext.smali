.class public Lcom/obs/services/internal/security/ProviderCredentialThreadContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/security/ProviderCredentialThreadContext$ProviderCredentialThreadContextHolder;
    }
.end annotation


# static fields
.field private static context:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/obs/services/internal/security/ProviderCredentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;->context:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/obs/services/internal/security/ProviderCredentialThreadContext$1;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/obs/services/internal/security/ProviderCredentialThreadContext;
    .registers 1

    .line 30
    # getter for: Lcom/obs/services/internal/security/ProviderCredentialThreadContext$ProviderCredentialThreadContextHolder;->instance:Lcom/obs/services/internal/security/ProviderCredentialThreadContext;
    invoke-static {}, Lcom/obs/services/internal/security/ProviderCredentialThreadContext$ProviderCredentialThreadContextHolder;->access$100()Lcom/obs/services/internal/security/ProviderCredentialThreadContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearProviderCredentials()V
    .registers 1

    .line 42
    sget-object p0, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;->context:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public getProviderCredentials()Lcom/obs/services/internal/security/ProviderCredentials;
    .registers 1

    .line 38
    sget-object p0, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;->context:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/obs/services/internal/security/ProviderCredentials;

    return-object p0
.end method

.method public setProviderCredentials(Lcom/obs/services/internal/security/ProviderCredentials;)V
    .registers 2

    .line 34
    sget-object p0, Lcom/obs/services/internal/security/ProviderCredentialThreadContext;->context:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
