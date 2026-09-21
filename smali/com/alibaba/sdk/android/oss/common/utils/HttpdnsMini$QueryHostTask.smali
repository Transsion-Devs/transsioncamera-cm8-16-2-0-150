.class Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHostTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private hasRetryed:Z

.field private hostName:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;Ljava/lang/String;)V
    .registers 3

    .line 124
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hasRetryed:Z

    .line 125
    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hostName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->call()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/String;
    .registers 11

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "203.107.1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "181345"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/d?host="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[httpdnsmini] - buildUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 135
    :try_start_3c
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v2, 0x2710

    .line 136
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 137
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 138
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_79

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[httpdnsmini] - responseCodeNot 200, but: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logError(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_140

    :catchall_72
    move-exception p0

    goto/16 :goto_16d

    :catch_75
    move-exception v0

    move-object v2, v1

    goto/16 :goto_14b

    .line 141
    :cond_79
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_7d} :catch_75
    .catchall {:try_start_3c .. :try_end_7d} :catchall_72

    .line 142
    :try_start_7d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    :goto_8e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a2

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8e

    :catchall_98
    move-exception p0

    move-object v1, v0

    goto/16 :goto_16d

    :catch_9c
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_14b

    .line 148
    :cond_a2
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v3, "host"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    const-string v4, "ttl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 151
    const-string v6, "ips"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[httpdnsmini] - ips:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    if-eqz v3, :cond_140

    .line 153
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_140

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_e5

    const-wide/16 v4, 0x1e

    .line 159
    :cond_e5
    new-instance v6, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    invoke-direct {v6, v7}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;-><init>(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)V

    const/4 v7, 0x0

    .line 160
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-virtual {v6, v3}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setHostName(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v6, v4, v5}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setTtl(J)V

    .line 163
    invoke-virtual {v6, v2}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setIp(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-virtual {v6, v3, v4}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->setQueryTime(J)V

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[httpdnsmini] - resolve result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$HostObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    # getter for: Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->hostManager:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->access$000(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_135

    .line 167
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->this$0:Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;

    # getter for: Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->hostManager:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;->access$000(Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hostName:Ljava/lang/String;

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_135} :catch_9c
    .catchall {:try_start_7d .. :try_end_135} :catchall_98

    :cond_135
    if-eqz v0, :cond_13f

    .line 180
    :try_start_137
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_13b

    return-object v2

    :catch_13b
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13f
    return-object v2

    :cond_140
    :goto_140
    if-eqz v0, :cond_160

    .line 180
    :try_start_142
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_145} :catch_146

    goto :goto_160

    :catch_146
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_160

    .line 173
    :goto_14b
    :try_start_14b
    invoke-static {}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->isEnableLog()Z

    move-result v3

    if-eqz v3, :cond_15b

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V
    :try_end_157
    .catchall {:try_start_14b .. :try_end_157} :catchall_158

    goto :goto_15b

    :catchall_158
    move-exception p0

    move-object v1, v2

    goto :goto_16d

    :cond_15b
    :goto_15b
    if-eqz v2, :cond_160

    .line 180
    :try_start_15d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_160} :catch_146

    .line 186
    :cond_160
    :goto_160
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hasRetryed:Z

    if-nez v0, :cond_16c

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->hasRetryed:Z

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/common/utils/HttpdnsMini$QueryHostTask;->call()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16c
    return-object v1

    :goto_16d
    if-eqz v1, :cond_177

    .line 180
    :try_start_16f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_172} :catch_173

    goto :goto_177

    :catch_173
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    :cond_177
    :goto_177
    throw p0
.end method
