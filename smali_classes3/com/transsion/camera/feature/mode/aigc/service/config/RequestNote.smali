.class public Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAP_CAPACITY:I = 0x2

.field private static final SDCARD_CONFIG_FILE:Ljava/lang/String; = ".aigc"

.field private static final SDCARD_CONFIG_FILE_DIR:Ljava/lang/String;

.field private static final SP_FILE_NAME_SUFFIX:Ljava/lang/String; = "_aigc"

.field private static final SP_KEY:Ljava/lang/String; = "aigc_request_limit"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mRequestCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TO6nCXoSVIvJhMlxEwsieMQzfk4(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    .line 131
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$VYa6iVTDXiwxRHzd1Y3SAiwUc0k(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    .line 154
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRequestCountMap(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->mRequestCountMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msyncFromSdcard(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)Ljava/util/Map;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->syncFromSdcard()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msyncFromSp(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)Ljava/util/Map;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->syncFromSp()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msyncToStorage(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->syncToStorage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smsyncToSdcard(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->syncToSdcard(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsyncToSp(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->syncToSp(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RequestNote"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->SDCARD_CONFIG_FILE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->mRequestCountMap:Ljava/util/Map;

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->syncFromStorage()V

    return-void
.end method

.method private syncFromSdcard()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 141
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->SDCARD_CONFIG_FILE_DIR:Ljava/lang/String;

    const-string v2, ".aigc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_5f

    if-eqz v1, :cond_67

    .line 143
    :try_start_f
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_56

    const/16 v0, 0x1000

    .line 145
    :try_start_1b
    new-array v0, v0, [C

    .line 146
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 147
    :goto_22
    invoke-virtual {v1, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    const/4 v4, 0x0

    .line 148
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_22

    :catchall_2e
    move-exception p0

    goto :goto_4d

    .line 151
    :cond_30
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->toJSONObjectSafe(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 153
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 154
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_2e

    .line 157
    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_56

    return-object v0

    .line 143
    :goto_4d
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v0

    :try_start_52
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_56

    :catch_56
    move-exception p0

    .line 158
    :try_start_57
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "read sdcard config file failed."

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5e} :catch_5f

    goto :goto_67

    :catch_5f
    move-exception p0

    .line 162
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "syncFromSdcard failed!"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :cond_67
    :goto_67
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method private syncFromSp()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 127
    :try_start_5
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 128
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_aigc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    const-string v2, "aigc_request_limit"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->toJSONObjectSafe(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3b

    return-object v0

    :catch_3b
    move-exception p0

    .line 133
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "syncFromSp failed!"

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private syncFromStorage()V
    .registers 4

    .line 86
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;

    const-string v2, "syncFromStorage"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method private static syncToSdcard(Ljava/lang/String;)V
    .registers 4

    .line 209
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->SDCARD_CONFIG_FILE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 211
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "create sdcard config file dir failed."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_1b
    new-instance v0, Ljava/io/File;

    const-string v2, ".aigc"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_47

    .line 216
    :try_start_22
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_3d

    .line 217
    :try_start_2c
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    .line 218
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_3d

    goto :goto_4f

    :catchall_33
    move-exception p0

    .line 216
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception v0

    :try_start_39
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3c
    throw p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception p0

    .line 219
    :try_start_3e
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "write sdcard config file failed."

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_47

    goto :goto_4f

    :catch_47
    move-exception p0

    .line 222
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "syncToSdcard failed!"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4f
    return-void
.end method

.method private static syncToSp(Ljava/lang/String;)V
    .registers 4

    .line 199
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 200
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_aigc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aigc_request_limit"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p0

    .line 203
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "syncToSp failed!"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private syncToStorage()V
    .registers 4

    .line 181
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$2;

    const-string v2, "syncToStorage"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote$2;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method private toJSONObjectSafe(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 170
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 173
    :cond_c
    :try_start_c
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 175
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toJSONObjectSafe failed, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method private today()Ljava/lang/String;
    .registers 3

    .line 227
    new-instance p0, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd"

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public requestSuccess()V
    .registers 6

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->today()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->requestedToday()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 70
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->mRequestCountMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v2, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSuccess today: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", requestedToday: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->mRequestCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_7c

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->mRequestCountMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    sget-object v2, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSuccess removeEntry key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_31

    .line 82
    :cond_7c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->syncToStorage()V

    return-void
.end method

.method public requestedToday()I
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->mRequestCountMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->today()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/service/config/RequestNote;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestedToday: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p0, :cond_26

    const/4 p0, 0x0

    return p0

    .line 63
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
