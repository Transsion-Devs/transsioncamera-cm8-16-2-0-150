.class Lcom/obs/services/internal/security/ProviderCredentials$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/internal/security/ProviderCredentials;->setLocalAuthTypeCacheCapacity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/obs/services/model/AuthTypeEnum;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/obs/services/internal/security/ProviderCredentials;

.field final synthetic val$localAuthTypeCacheCapacity:I


# direct methods
.method constructor <init>(Lcom/obs/services/internal/security/ProviderCredentials;IFZI)V
    .registers 6

    .line 50
    iput-object p1, p0, Lcom/obs/services/internal/security/ProviderCredentials$1;->this$0:Lcom/obs/services/internal/security/ProviderCredentials;

    iput p5, p0, Lcom/obs/services/internal/security/ProviderCredentials$1;->val$localAuthTypeCacheCapacity:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/AuthTypeEnum;",
            ">;)Z"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget p0, p0, Lcom/obs/services/internal/security/ProviderCredentials$1;->val$localAuthTypeCacheCapacity:I

    if-le p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
