.class Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/aicore/nexusflow/FlowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;


# direct methods
.method static bridge synthetic -$$Nest$mdownloadResult(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;Ljava/lang/String;)[B
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->downloadResult(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private downloadResult(Ljava/lang/String;)[B
    .registers 9

    .line 229
    const-string p0, "downloadResult outputStream close error"

    const-string v0, "downloadResult inputStream close error"

    const/4 v1, 0x0

    .line 235
    :try_start_5
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadResult imageUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    .line 240
    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 241
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 243
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_76
    .catchall {:try_start_5 .. :try_end_33} :catchall_71

    .line 244
    :try_start_33
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_6e
    .catchall {:try_start_33 .. :try_end_38} :catchall_69

    const/16 v3, 0x400

    .line 247
    :try_start_3a
    new-array v3, v3, [B

    .line 248
    :goto_3c
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4c

    const/4 v5, 0x0

    .line 249
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3c

    :catchall_48
    move-exception v1

    goto :goto_94

    :catch_4a
    move-exception v3

    goto :goto_79

    .line 252
    :cond_4c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_50} :catch_4a
    .catchall {:try_start_3a .. :try_end_50} :catchall_48

    .line 258
    :try_start_50
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_5c

    :catch_54
    move-exception p1

    .line 260
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    invoke-static {v3, v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :goto_5c
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_93

    :catch_60
    move-exception p1

    .line 267
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_93

    :catchall_69
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_94

    :catch_6e
    move-exception v3

    move-object v2, v1

    goto :goto_79

    :catchall_71
    move-exception p1

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    goto :goto_94

    :catch_76
    move-exception v3

    move-object p1, v1

    move-object v2, p1

    .line 254
    :goto_79
    :try_start_79
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    const-string v5, "downloadResult error"

    invoke-static {v4, v5, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_48

    if-eqz p1, :cond_90

    .line 258
    :try_start_84
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_90

    :catch_88
    move-exception p1

    .line 260
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    invoke-static {v3, v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    if-eqz v2, :cond_93

    goto :goto_5c

    :cond_93
    :goto_93
    return-object v1

    :goto_94
    if-eqz p1, :cond_a2

    .line 258
    :try_start_96
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_a2

    :catch_9a
    move-exception p1

    .line 260
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    invoke-static {v3, v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a2
    :goto_a2
    if-eqz v2, :cond_b0

    .line 265
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_b0

    :catch_a8
    move-exception p1

    .line 267
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    :cond_b0
    :goto_b0
    throw v1
.end method


# virtual methods
.method public onComponentResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11

    .line 134
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComponentResult instanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", component: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    const-string p1, "generate_ability"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_49

    .line 137
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onComponentResult invalid component: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_49
    const-string p1, "method"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 143
    const-string p1, ""

    .line 145
    :cond_57
    const-string v0, "cv_result"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_64

    .line 147
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 150
    :cond_64
    sget-object v0, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->INSTANCE:Lcom/transsion/aicore/cv/ipc/data/DataAdapter;

    invoke-virtual {v0, p2, p1, p3}, Lcom/transsion/aicore/cv/ipc/data/DataAdapter;->parseBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    .line 151
    instance-of p2, p1, Lcom/transsion/aicore/cv/ipc/data/GenerateData;

    if-nez p2, :cond_78

    .line 152
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "generate result is not GenerateData"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_78
    move-object v6, p1

    check-cast v6, Lcom/transsion/aicore/cv/ipc/data/GenerateData;

    .line 158
    invoke-virtual {v6}, Lcom/transsion/aicore/cv/ipc/data/GenerateData;->getRequestId()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "generate requestId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 163
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "generate fail requestId is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_a7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmLockGuard(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 170
    :try_start_ae
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generate mRequestMap: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmRequestMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmRequestMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/ai/AIRequest;

    if-nez p2, :cond_f5

    .line 174
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p2, "generate fail request is null"

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    monitor-exit p1

    return-void

    :catchall_f1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_17b

    .line 178
    :cond_f5
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmCurrentRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p3

    const/4 v0, 0x0

    if-ne p2, p3, :cond_103

    .line 180
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p3, v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fputmCurrentRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    .line 183
    :cond_103
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmRequestHolderMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    if-nez v3, :cond_126

    .line 185
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    const-string p3, "generate fail requestHolder is null"

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmRequestMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    monitor-exit p1

    return-void

    .line 189
    :cond_126
    monitor-exit p1
    :try_end_127
    .catchall {:try_start_ae .. :try_end_127} :catchall_f1

    .line 191
    invoke-virtual {v6}, Lcom/transsion/aicore/cv/ipc/data/GenerateData;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16b

    .line 193
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "generate fail url is null, elapseTime: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmStartTime(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmCallBackWrapper(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    move-result-object p0

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/common/ai/AIResponse;

    .line 196
    invoke-virtual {v6}, Lcom/transsion/aicore/cv/ipc/data/GenerateData;->getCode()I

    move-result p3

    invoke-virtual {v6}, Lcom/transsion/aicore/cv/ipc/data/GenerateData;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1, v0}, Lcom/transsion/camera/app/common/ai/AIResponse;-><init>(ILjava/lang/String;[B)V

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    return-void

    .line 200
    :cond_16b
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;

    const-string v2, "downloadResult"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;Ljava/lang/String;Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/aicore/cv/ipc/data/GenerateData;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void

    .line 189
    :goto_17b
    :try_start_17b
    monitor-exit p1
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_f1

    throw p0
.end method

.method public onComponentTrickle(Ljava/lang/String;Landroid/os/Bundle;[B)V
    .registers 5

    .line 306
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onComponentTrickle instanceId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onFlowComplete(Ljava/lang/String;Lcom/transsion/aicore/nexusflow/FlowResult;)V
    .registers 5

    .line 277
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFlowComplete instanceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", flowResult: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onFlowError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 282
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFlowError instanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmLockGuard(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 288
    :try_start_27
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmCurrentRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p2

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fputmCurrentRequest(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/app/common/ai/AIRequest;)V

    if-eqz p2, :cond_6f

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmRequestHolderMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;

    if-eqz v0, :cond_70

    .line 293
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFlowError requestId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$1;->this$0:Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmRequestMap(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmRequestId(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :catchall_6d
    move-exception p0

    goto :goto_7b

    :cond_6f
    move-object v0, v1

    .line 297
    :cond_70
    :goto_70
    monitor-exit p1
    :try_end_71
    .catchall {:try_start_27 .. :try_end_71} :catchall_6d

    if-eqz v0, :cond_7a

    .line 300
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;->-$$Nest$fgetmCallBackWrapper(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$RequestHolder;)Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/CallBackWrapper;->onResponse(Lcom/transsion/camera/app/common/ai/AIRequest;Lcom/transsion/camera/app/common/ai/AIResponse;)V

    :cond_7a
    return-void

    .line 297
    :goto_7b
    :try_start_7b
    monitor-exit p1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_6d

    throw p0
.end method

.method public onFlowStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 129
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFlowStart instanceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", flowType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
