.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 171
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_AppConfig()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCMemOwn:Z

    .line 21
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 25
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 38
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 39
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 40
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCMemOwn:Z

    .line 41
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_AppConfig(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 43
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 45
    :cond_18
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->delete()V

    return-void
.end method

.method public getAccessKey()Ljava/lang/String;
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_accessKey_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppID()Ljava/lang/String;
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_appID_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_appVersion_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBachApplicationName()Ljava/lang/String;
    .registers 3

    .line 132
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_bachApplicationName_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCacheDir()Ljava/lang/String;
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_cacheDir_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDavinciHeaderFeild()Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;
    .registers 5

    .line 148
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_davinciHeaderFeild_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;-><init>(JZ)V

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_deviceId_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_deviceType_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .registers 3

    .line 116
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_host_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkDelegate()Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;
    .registers 5

    .line 157
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_networkDelegate_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;-><init>(JZ)V

    return-object p0
.end method

.method public getPlatform()Ljava/lang/String;
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_platform_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlatformSdkVersion()Ljava/lang/String;
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_platformSdkVersion_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_sdkVersion_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 3

    .line 124
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_status_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThreadDelegate()Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;
    .registers 5

    .line 166
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_threadDelegate_get(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_e
    new-instance p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;-><init>(JZ)V

    return-object p0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .registers 4

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_accessKey_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .registers 4

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_appID_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 4

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_appVersion_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setBachApplicationName(Ljava/lang/String;)V
    .registers 4

    .line 128
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_bachApplicationName_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .registers 4

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_cacheDir_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setDavinciHeaderFeild(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;)V
    .registers 8

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_davinciHeaderFeild_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapVoidFunc;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .registers 4

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_deviceId_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .registers 4

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_deviceType_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 4

    .line 112
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_host_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setNetworkDelegate(Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;)V
    .registers 8

    .line 153
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_networkDelegate_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;JLcom/bytedance/ies/mediaprocessors/delegates_jni/INetworkDelegate;)V

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .registers 4

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_platform_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setPlatformSdkVersion(Ljava/lang/String;)V
    .registers 4

    .line 136
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_platformSdkVersion_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_sdkVersion_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 4

    .line 120
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_status_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;Ljava/lang/String;)V

    return-void
.end method

.method public setThreadDelegate(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)V
    .registers 8

    .line 162
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->AppConfig_threadDelegate_set(JLcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;JLcom/bytedance/ies/mediaprocessors/delegates_jni/IThreadDelegate;)V

    return-void
.end method

.method public swigSetCMemOwn(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/AppConfig;->swigCMemOwn:Z

    return-void
.end method
