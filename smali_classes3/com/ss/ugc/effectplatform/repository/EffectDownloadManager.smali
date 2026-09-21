.class public final Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;

.field private static final downloadingEffects:Lbytekn/foundation/collections/SharedMutableMap;

.field private static final downloadingEffectsListener:Lbytekn/foundation/collections/SharedMutableMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;->INSTANCE:Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;

    .line 22
    new-instance v0, Lbytekn/foundation/collections/SharedMutableMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    sput-object v0, Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;->downloadingEffects:Lbytekn/foundation/collections/SharedMutableMap;

    .line 23
    new-instance v0, Lbytekn/foundation/collections/SharedMutableMap;

    invoke-direct {v0, v1}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(Z)V

    sput-object v0, Lcom/ss/ugc/effectplatform/repository/EffectDownloadManager;->downloadingEffectsListener:Lbytekn/foundation/collections/SharedMutableMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
