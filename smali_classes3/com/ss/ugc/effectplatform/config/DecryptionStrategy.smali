.class public final Lcom/ss/ugc/effectplatform/config/DecryptionStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/config/DecryptionStrategy;

.field public static useNewStrategy:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/ss/ugc/effectplatform/config/DecryptionStrategy;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/config/DecryptionStrategy;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/config/DecryptionStrategy;->INSTANCE:Lcom/ss/ugc/effectplatform/config/DecryptionStrategy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
