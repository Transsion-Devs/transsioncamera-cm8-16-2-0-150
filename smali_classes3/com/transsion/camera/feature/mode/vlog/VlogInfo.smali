.class public Lcom/transsion/camera/feature/mode/vlog/VlogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;
    }
.end annotation


# static fields
.field public static final FREE_SHOT_BACK_SEGMENT_LIST:Ljava/lang/String; = "free_shot_back_segment_list"

.field public static final FREE_SHOT_SEGMENT_LIST:Ljava/lang/String; = "free_shot_segment_list"

.field public static final KEY_CURRENT_PAGE:Ljava/lang/String; = "key_current_page"

.field public static final KEY_FRAME_SELECT:Ljava/lang/String; = "key_frame_select"

.field public static final KEY_INDICATOR_INDEX:Ljava/lang/String; = "key_indicator_index"

.field public static final KEY_TEMPLATE_INDEX:Ljava/lang/String; = "key_template_index"

.field public static final KEY_TEMPLATE_OFFSET:Ljava/lang/String; = "key_template_offset"

.field public static final KEY_TEMPLATE_POSITION:Ljava/lang/String; = "key_template_position"

.field public static final KEY_VIDEO_GUIDE_VOLUME:Ljava/lang/String; = "key_video_guide_volume"

.field public static final KEY_VLOG_BACK:Ljava/lang/String; = "key_vlog_back"

.field public static final KEY_VLOG_COMPOSE:Ljava/lang/String; = "key_vlog_compose"

.field public static final KEY_VLOG_DRAFT:Ljava/lang/String; = "key_vlog_draft"

.field public static final KEY_VLOG_SEGMENT_GUIDE_TIME:Ljava/lang/String; = "key_vlog_segment_guide_time"

.field public static final KEY_VLOG_TEMP_DETAIL_TAG:Ljava/lang/String; = "key_vlog_temp_detail_tag"

.field public static final NEED_SAVE_DRAFT:Ljava/lang/String; = "save_draft"

.field public static final REQUEST_CODE_COMPOSE_CUT_SAME:I = 0x64

.field public static final REQUEST_CODE_COMPOSE_FREE_SHOT:I = 0x65

.field public static final RESULT_VLOG_VIDEO_EDIT:I = 0x2

.field public static final RESULT_VLOG_VIDEO_SAVE_AND_SHARE:I = 0x1

.field public static final TEMPLATE_BACK_TO_HOME:Ljava/lang/String; = "back_template_item"

.field public static final TEMPLATE_REPLACE_LIST:Ljava/lang/String; = "replace_template_list"

.field public static final TEMPLATE_TO_EDITOR:Ljava/lang/String; = "edit_template_item"

.field public static final VALUE_INDICATOR_DEFAULT:Ljava/lang/String; = "0"

.field public static final VALUE_SEGMENT_GUIDE_TIME_DEFAULT:Ljava/lang/String; = "0"

.field public static final VALUE_TEMPLATE_INDEX_DEFAULT:Ljava/lang/String; = "0"

.field public static final VALUE_TEMPLATE_OFFSET_DEFAULT:Ljava/lang/String; = "48"

.field public static final VALUE_TEMPLATE_POSITION_DEFAULT:Ljava/lang/String; = "0"

.field public static final VALUE_VIDEO_GUIDE_VOLUME_DEFAULT:Ljava/lang/String; = "true"

.field public static final VALUE_VLOG_TEMP_DETAIL_DEFAULT:Ljava/lang/String; = "-1"

.field public static final VIDEO_CREATE_TIME:Ljava/lang/String; = "creation_time"

.field public static final VIDEO_NAME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final VLOG_DIALOG:Ljava/lang/String; = "vlog_dialog"

.field public static final VLOG_VIDEO_TEMP_PATH:Ljava/lang/String; = "vlog_video_temp_path"


# instance fields
.field private mDuration:J

.field private mHeight:I

.field private mVlogPath:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fputmDuration(Lcom/transsion/camera/feature/mode/vlog/VlogInfo;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mDuration:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHeight(Lcom/transsion/camera/feature/mode/vlog/VlogInfo;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVlogPath(Lcom/transsion/camera/feature/mode/vlog/VlogInfo;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mVlogPath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWidth(Lcom/transsion/camera/feature/mode/vlog/VlogInfo;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mWidth:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mDuration:J

    return-wide v0
.end method

.method public getHeight()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mHeight:I

    return p0
.end method

.method public getVlogPath()Ljava/lang/String;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mVlogPath:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mWidth:I

    return p0
.end method

.method public setVlogPath(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mVlogPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VlogInfo{mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->mHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
