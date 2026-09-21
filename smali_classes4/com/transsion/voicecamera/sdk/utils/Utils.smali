.class public Lcom/transsion/voicecamera/sdk/utils/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONFIG_JSON_EN:Ljava/lang/String; = "/asr_en_models.json"

.field public static final CONFIG_JSON_NG:Ljava/lang/String; = "/asr_ng_models.json"

.field public static final CONSTS_CONF_PATH:Ljava/lang/String; = "sdk_config/config.json"

.field public static final FEATURE_BOTH_AVAILABLE:I = 0x3

.field public static final FEATURE_NOT_AVAILABLE:I = 0x0

.field public static final FEATURE_OFFLINE_ONLY:I = 0x1

.field public static final FEATURE_ONLINE_ONLY:I = 0x2

.field public static final MODEL_LANG_AR:I = 0x5

.field public static final MODEL_LANG_EN:I = 0x0

.field public static final MODEL_LANG_FR:I = 0x3

.field public static final MODEL_LANG_HS:I = 0x2

.field public static final MODEL_LANG_IN:I = 0x4

.field public static final MODEL_LANG_NG:I = 0x1

.field public static final MODEL_LANG_SW:I = 0x6

.field public static final ONLINE_CONF_PATH:Ljava/lang/String; = "sdk_config/online_config_"

.field public static final TAG:Ljava/lang/String; = "VCSDK-Utils"

.field private static countryCode:Ljava/lang/String; = "UNKNOWN"

.field private static imei:Ljava/lang/String; = "unknown"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountryCode()Ljava/lang/String;
    .registers 1

    .line 46
    sget-object v0, Lcom/transsion/voicecamera/sdk/utils/Utils;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryZipCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 84
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 85
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 94
    :cond_35
    const-string v0, "UNKNOWN"

    .line 110
    :cond_37
    sget-boolean p0, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    if-eqz p0, :cond_51

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countryID: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VCSDK-Utils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-object v0
.end method

.method public static getJsonStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_d

    return-object v1

    .line 163
    :cond_d
    :try_start_d
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_40
    .catchall {:try_start_d .. :try_end_1c} :catchall_3e

    .line 165
    :try_start_1c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    :goto_21
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_21

    :catchall_2b
    move-exception v0

    move-object v1, p0

    goto :goto_51

    :catch_2e
    move-exception v0

    move-object v1, p0

    goto :goto_41

    .line 169
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_35} :catch_2e
    .catchall {:try_start_1c .. :try_end_35} :catchall_2b

    .line 175
    :try_start_35
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_50

    :catch_39
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_50

    :catchall_3e
    move-exception v0

    goto :goto_51

    :catch_40
    move-exception v0

    .line 171
    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    if-eqz v1, :cond_4e

    .line 175
    :try_start_46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    :cond_4e
    :goto_4e
    const-string v0, ""

    :goto_50
    return-object v0

    :goto_51
    if-eqz v1, :cond_5b

    .line 175
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    :cond_5b
    :goto_5b
    throw v0
.end method

.method public static getLanguage()I
    .registers 2

    .line 115
    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getConfig()Lcom/transsion/voicecamera/sdk/TransVCConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getLanguage()Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/transsion/voicecamera/sdk/utils/Utils$1;->$SwitchMap$com$transsion$voicecamera$sdk$utils$LangEnum:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_22

    const/4 v0, 0x0

    return v0

    :pswitch_15
    const/4 v0, 0x6

    return v0

    :pswitch_17
    const/4 v0, 0x5

    return v0

    :pswitch_19
    const/4 v0, 0x4

    return v0

    :pswitch_1b
    const/4 v0, 0x3

    return v0

    :pswitch_1d
    const/4 v0, 0x2

    return v0

    :pswitch_1f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_15
    .end packed-switch
.end method

.method public static getLanguageAbbr()Ljava/lang/String;
    .registers 2

    .line 136
    sget-object v0, Lcom/transsion/voicecamera/sdk/utils/Utils$1;->$SwitchMap$com$transsion$voicecamera$sdk$utils$LangEnum:[I

    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getConfig()Lcom/transsion/voicecamera/sdk/TransVCConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getLanguage()Lcom/transsion/voicecamera/sdk/utils/LangEnum;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    .line 151
    const-string v0, "en"

    return-object v0

    .line 148
    :pswitch_16
    const-string v0, "sw"

    return-object v0

    .line 146
    :pswitch_19
    const-string v0, "ar"

    return-object v0

    .line 144
    :pswitch_1c
    const-string v0, "in"

    return-object v0

    .line 142
    :pswitch_1f
    const-string v0, "fr"

    return-object v0

    .line 140
    :pswitch_22
    const-string v0, "hs"

    return-object v0

    .line 138
    :pswitch_25
    const-string v0, "ng"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method

.method public static getTimeZone()Ljava/lang/String;
    .registers 7

    .line 55
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-boolean v2, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    if-eqz v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timezone short standard form: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCSDK-Utils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v3, "Etc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 63
    aget-object v4, v3, v1

    const-string v5, "\\d{1,2}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 64
    aget-object v3, v3, v1

    const-string v5, "\\p{Alpha}\\p{Alpha}\\p{Alpha}[+-]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 66
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_69

    const/4 v0, 0x1

    .line 67
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    aget-object v1, v4, v1

    const-string v3, "GMT+"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 69
    const-string v1, "GMT-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 71
    :cond_62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :goto_65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6c

    .line 75
    :cond_69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :goto_6c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readJsonData(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_26

    .line 195
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t Find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    :cond_26
    :try_start_26
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance p0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 202
    :goto_37
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37

    :catch_41
    move-exception p0

    goto :goto_47

    .line 205
    :cond_43
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_46} :catch_41

    goto :goto_4a

    .line 207
    :goto_47
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 209
    :goto_4a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .registers 3

    .line 50
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VCSDK-Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1a
    sput-object p0, Lcom/transsion/voicecamera/sdk/utils/Utils;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public static stringToJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 223
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 224
    invoke-virtual {v0, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static timeStampToDate(JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_15

    .line 215
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 216
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 219
    :cond_15
    const-string p0, ""

    return-object p0
.end method
