.class Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/DataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataWrapper"
.end annotation


# instance fields
.field private final mMMKV:Lcom/tencent/mmkv/MMKV;

.field private final mScope:Ljava/lang/String;

.field private final mValueCache:Ljava/util/Map;

.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method static bridge synthetic -$$Nest$mgetAll(Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;)Ljava/util/Map;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetValue(Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetValue(Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->setValue(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V
    .registers 3

    .line 205
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->this$0:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mValueCache:Ljava/util/Map;

    .line 206
    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mScope:Ljava/lang/String;

    .line 207
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->getDataFromScope(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mMMKV:Lcom/tencent/mmkv/MMKV;

    return-void
.end method

.method private getAll()Ljava/util/Map;
    .registers 9

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mMMKV:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->allKeys()[Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 235
    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_45

    aget-object v4, v0, v3

    if-eqz v4, :cond_42

    .line 237
    iget-object v5, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mMMKV:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v5, v4}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {}, Lcom/transsion/camera/app/common/storage/DataStore;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAll, key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mMMKV:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v7, v4}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_45
    return-object v1
.end method

.method private getDataFromScope(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->this$0:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->-$$Nest$fgetmPackageName(Lcom/transsion/camera/app/common/storage/DataStore;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;I)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    return-object p0
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mValueCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mValueCache:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 228
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mMMKV:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    if-eqz p3, :cond_a

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mValueCache:Ljava/util/Map;

    if-eqz p0, :cond_9

    .line 217
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void

    .line 220
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mMMKV:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public clearCache()V
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/DataStore$DataWrapper;->mValueCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
