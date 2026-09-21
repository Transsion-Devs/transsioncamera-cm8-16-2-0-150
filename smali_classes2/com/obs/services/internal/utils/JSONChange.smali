.class public Lcom/obs/services/internal/utils/JSONChange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;,
        Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonToObj(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 41
    const-string v0, " conversion JSON failed"

    invoke-static {}, Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil;->getInstance()Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;

    move-result-object v1

    .line 43
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_6 .. :try_end_e} :catch_1f
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_6 .. :try_end_e} :catch_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    goto :goto_13

    :catch_11
    move-exception p0

    goto :goto_19

    .line 50
    :goto_13
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 48
    :goto_19
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1f
    move-exception p0

    .line 46
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, " conversion JSON failed "

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static objToJson(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 72
    invoke-static {}, Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil;->getInstance()Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;

    move-result-object v0

    .line 74
    :try_start_4
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 76
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    const-string v1, "conversion JSON failed"

    invoke-direct {v0, v1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static readNodeFromJson(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .registers 3

    .line 55
    invoke-static {}, Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil;->getInstance()Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;

    move-result-object v0

    .line 57
    :try_start_4
    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 60
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    const-string v1, " read node failed"

    invoke-direct {v0, v1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
