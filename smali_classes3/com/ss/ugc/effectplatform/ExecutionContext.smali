.class public abstract Lcom/ss/ugc/effectplatform/ExecutionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final callbackManager:Lcom/ss/ugc/effectplatform/listener/CallbackManager;

.field private final fileManager:Lbytekn/foundation/io/file/FileManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lbytekn/foundation/io/file/FileManager;->INSTANCE:Lbytekn/foundation/io/file/FileManager;

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/ExecutionContext;->fileManager:Lbytekn/foundation/io/file/FileManager;

    .line 20
    new-instance v0, Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/listener/CallbackManager;-><init>()V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/ExecutionContext;->callbackManager:Lcom/ss/ugc/effectplatform/listener/CallbackManager;

    return-void
.end method


# virtual methods
.method public abstract getCallbackManager()Lcom/ss/ugc/effectplatform/listener/CallbackManager;
.end method

.method public abstract getEffectNetWorker()Lbytekn/foundation/concurrent/SharedReference;
.end method

.method public abstract getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;
.end method
