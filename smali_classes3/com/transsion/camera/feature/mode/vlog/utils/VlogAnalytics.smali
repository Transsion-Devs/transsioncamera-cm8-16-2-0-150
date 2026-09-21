.class public Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_VLOG_MODE:Ljava/lang/String; = "key_vlog_mode"

.field private static final KEY_VLOG_ORIENTATION:Ljava/lang/String; = "key_orientation"

.field private static final KEY_VLOG_SEG_DURATION:Ljava/lang/String; = "key_vlog_seg_durations"

.field private static final KEY_VLOG_SEG_VIDEO_COUNT:Ljava/lang/String; = "key_vlog_seg_video_count"

.field private static final KEY_VLOG_SEG_VIDEO_CURSOR_ADJUSTED:Ljava/lang/String; = "key_vlog_seg_video_cursor_adjusted"

.field private static final KEY_VLOG_TEMPLATE_FINAL:Ljava/lang/String; = "key_vlog_template_final"

.field private static final KEY_VLOG_TEMPLATE_INITIAL:Ljava/lang/String; = "key_vlog_template_initial"

.field private static final KEY_VLOG_TMPL_CHANGE_FLAG:Ljava/lang/String; = "key_vlog_tmpl_change_flag"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;


# instance fields
.field private mOriginTmplId:Ljava/lang/String;

.field private mSegVideoCursorAdjusted:Ljava/lang/String;

.field private final mSegVideoCursorJson:Lorg/json/JSONObject;

.field private mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

.field private mTmplChangeFlag:I

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VlogAnalyticsUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mSegVideoCursorJson:Lorg/json/JSONObject;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;
    .registers 2

    const-class v0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->sInstance:Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    if-nez v1, :cond_11

    .line 48
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    invoke-direct {v1}, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->sInstance:Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    .line 50
    :cond_11
    :goto_11
    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->sInstance:Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public getVlogOperationBundle()Landroid/os/Bundle;
    .registers 9

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getTemplateItem()Lcom/cutsame/solution/template/model/TemplateItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cutsame/solution/template/model/TemplateItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/TemplateInfo;->getTemplateAnalyticsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOrientation()I

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "1"

    goto :goto_37

    :cond_35
    const-string v1, "0"

    .line 59
    :goto_37
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move v4, v2

    .line 61
    :goto_3d
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_90

    .line 62
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->isValid()Z

    move-result v5

    if-eqz v5, :cond_8d

    add-int/lit8 v4, v4, 0x1

    .line 64
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    invoke-virtual {v5}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.1f"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    .line 66
    :try_start_81
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_88} :catch_89

    goto :goto_8d

    :catch_89
    move-exception v5

    .line 68
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8d
    :goto_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 73
    :cond_90
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v5, "key_vlog_mode"

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mType:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v5, "key_vlog_template_initial"

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mOriginTmplId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v5, "key_vlog_template_final"

    invoke-virtual {v3, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v5, "key_vlog_tmpl_change_flag"

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mTmplChangeFlag:I

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v5, "key_orientation"

    invoke-virtual {v3, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v5, "key_vlog_seg_video_count"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    const-string v5, "key_vlog_seg_durations"

    invoke-virtual {v3, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v5, "key_vlog_seg_video_cursor_adjusted"

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mSegVideoCursorAdjusted:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v5, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getVlogOperationBundle] mType :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getVlogOperationBundle] mOriginTmplId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mOriginTmplId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getVlogOperationBundle] finalTemplateId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getVlogOperationBundle] mTmplChangeFlag :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mTmplChangeFlag:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getVlogOperationBundle] orientation :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getVlogOperationBundle] segVideoCount :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getVlogOperationBundle] segmentDuration :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getVlogOperationBundle] mSegVideoCursorAdjusted :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mSegVideoCursorAdjusted:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v3
.end method

.method public replaceTemplate(I)V
    .registers 2

    .line 106
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mTmplChangeFlag:I

    return-void
.end method

.method public resetVlogValue()V
    .registers 6

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mTmplChangeFlag:I

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mSegVideoCursorJson:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 126
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 129
    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_22
    if-ge v0, v2, :cond_32

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Ljava/lang/String;

    .line 130
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mSegVideoCursorJson:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_22

    :cond_32
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mSegVideoCursorAdjusted:Ljava/lang/String;

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 98
    const-string p1, "1"

    goto :goto_8

    :cond_6
    const-string p1, "0"

    :goto_8
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mType:Ljava/lang/String;

    return-void
.end method

.method public updateOriginTmplAnalyticsId(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mOriginTmplId:Ljava/lang/String;

    return-void
.end method

.method public updateRefreshState(IZ)V
    .registers 4

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mSegVideoCursorJson:Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_d

    const-string p2, "1"

    goto :goto_f

    :catch_b
    move-exception p1

    goto :goto_13

    :cond_d
    const-string p2, "0"

    :goto_f
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_b

    goto :goto_16

    .line 113
    :goto_13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    :goto_16
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mSegVideoCursorJson:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mSegVideoCursorAdjusted:Ljava/lang/String;

    return-void
.end method

.method public updateTemplateWrapItemData(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/utils/VlogAnalytics;->mTemplateWrapItemData:Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    return-void
.end method
