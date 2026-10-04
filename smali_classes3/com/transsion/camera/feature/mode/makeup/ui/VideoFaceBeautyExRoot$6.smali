.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$6;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .registers 4

    .line 444
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$6;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 446
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_facebeauty_slimbody_switch:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_slimbody_switch_lowlight:I

    .line 447
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 446
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_selector_black:I

    .line 449
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 448
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableTrueToneV2:Z

    if-nez v0, :cond_33

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_42

    .line 451
    :cond_33
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_muscle_care_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_muscle_care_selector_black:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_42
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_smooth_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_smooth_selector_black:I

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 453
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_69

    .line 456
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_color_card_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_color_card_selector_black:I

    .line 457
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 456
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 459
    :cond_69
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_selector_black:I

    .line 460
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 459
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :goto_78
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_face_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_face_selector_black:I

    .line 463
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 462
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_eye_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_eye_selector_black:I

    .line 465
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 464
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_cutting_face_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_cutting_face_selector_black:I

    .line 467
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 466
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_nose_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_nose_selector_black:I

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 468
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_head_selector:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_head_selector_black:I

    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 470
    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmItdV2Support(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Z

    move-result p1

    if-eqz p1, :cond_d8

    .line 473
    sget p1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_five_senses_selector:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_five_senses_selector_black:I

    .line 474
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 473
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_d8
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_reset_selector:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_reset_selector_black:I

    .line 477
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 476
    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
