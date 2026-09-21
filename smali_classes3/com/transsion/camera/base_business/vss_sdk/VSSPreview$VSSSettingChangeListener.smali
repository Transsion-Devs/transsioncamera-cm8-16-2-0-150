.class final Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VSSSettingChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;Lcom/transsion/camera/base_business/vss_sdk/VSSPreview-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;-><init>(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 184
    const-string v0, "key_mirror"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$mupdateTexTransformMatrix(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_10
    const-string v0, "key_video_filter_style"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    .line 187
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 189
    iget-object v0, p1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mLevel:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v2

    iget v3, p1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mValue:I

    invoke-virtual {v2, v3}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setFilterId(I)V

    .line 191
    iget-object v2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setFilterLevel(I)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    iget p1, p1, Lcom/transsion/camera/app/common/setting/videofilter/VideoFilterItemInfo;->mValue:I

    invoke-static {v0, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fputmFilterValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;I)V

    .line 194
    :cond_43
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->postInvalidate(I)V

    .line 195
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KEY_VIDEO_FILTER_STYLE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_61
    const-string v0, "key_video_effect_style"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 197
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_VIDEO_EFFECT_STYLE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 199
    iget-object p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setEffectId(I)V

    .line 200
    iget-object p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p2, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fputmEffectValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;I)V

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->postInvalidate(I)V

    return-void

    .line 202
    :cond_9b
    const-string v0, "key_video_frame_style"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 203
    invoke-static {}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_VIDEO_FRAME_STYLE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {v0}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setFrameId(I)V

    .line 206
    iget-object p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p2, p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fputmFrameValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;I)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->postInvalidate(I)V

    return-void

    .line 208
    :cond_d9
    const-string v0, "key_video_filter"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x96

    const-string v3, "off"

    if-eqz v0, :cond_105

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f6

    goto :goto_fc

    :cond_f6
    iget-object p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmFilterValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v1

    :goto_fc
    invoke-virtual {p1, v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setFilterId(I)V

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->postInvalidate(I)V

    return-void

    .line 211
    :cond_105
    const-string v0, "key_video_effect"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11e

    goto :goto_124

    :cond_11e
    iget-object p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmEffectValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v1

    :goto_124
    invoke-virtual {p1, v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setEffectId(I)V

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->postInvalidate(I)V

    return-void

    .line 214
    :cond_12d
    const-string v0, "key_video_frame"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_154

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p1}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmRenderDrawer(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_146

    goto :goto_14c

    :cond_146
    iget-object p2, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-static {p2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->-$$Nest$fgetmFrameValue(Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;)I

    move-result v1

    :goto_14c
    invoke-virtual {p1, v1}, Lcom/transsion/camera/base_business/vss_sdk/VSSDrawer;->setFrameId(I)V

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview$VSSSettingChangeListener;->this$0:Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/base_business/vss_sdk/VSSPreview;->postInvalidate(I)V

    :cond_154
    return-void
.end method
