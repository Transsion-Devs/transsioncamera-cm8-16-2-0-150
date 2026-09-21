.class Lcom/ss/android/medialib/RecordInvoker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/AVCEncoderInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/RecordInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/RecordInvoker;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/RecordInvoker;)V
    .registers 2

    .line 2889
    iput-object p1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProfile()I
    .registers 1

    .line 2964
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {p0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoder;->getProfile()I

    move-result p0

    return p0
.end method

.method public onEncoderData(IIIZ)I
    .registers 7

    .line 3002
    const-string v0, "RecordInvoker"

    const-string v1, "onEncoderData: ..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3004
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {p0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/AVCEncoder;->encode(IIIZ)I

    move-result p0

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public onEncoderData(Ljava/nio/ByteBuffer;IZ)V
    .registers 4

    .line 2997
    const-string p0, "RecordInvoker"

    const-string p1, "onEncoderData: ..."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEncoderData([BIZ)V
    .registers 6

    .line 2986
    const-string v0, "FaceBeautyManager onEncoderData == enter"

    const-string v1, "RecordInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2989
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {p0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/AVCEncoder;->encode([BIZ)I

    .line 2992
    :cond_18
    const-string p0, "FaceBeautyManager onEncoderData == exit"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitHardEncoder(IIIIIIZI)Landroid/view/Surface;
    .registers 21

    move/from16 v0, p8

    .line 2926
    const-string v1, "FaceBeautyManager onInitHardEncoder == enter"

    const-string v2, "RecordInvoker"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\theight = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\tcodecType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    iget-object v1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v1}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 2930
    iget-object v1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    new-instance v3, Lcom/ss/android/medialib/AVCEncoder;

    invoke-direct {v3}, Lcom/ss/android/medialib/AVCEncoder;-><init>()V

    # setter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v1, v3}, Lcom/ss/android/medialib/RecordInvoker;->access$202(Lcom/ss/android/medialib/RecordInvoker;Lcom/ss/android/medialib/AVCEncoder;)Lcom/ss/android/medialib/AVCEncoder;

    .line 2933
    :cond_3f
    iget-object v1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v1}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/medialib/AVCEncoder;->setCodecType(I)V

    .line 2934
    iget-object v1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v1}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ss/android/medialib/AVCEncoder;->setEncoderCaller(Lcom/ss/android/medialib/AVCEncoderInterface;)V

    .line 2935
    iget-object v1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v1}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/ss/android/medialib/AVCEncoder;->initAVCEncoder(IIIIIIZ)Landroid/view/Surface;

    move-result-object v1

    .line 2936
    iget-object v3, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v3}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ss/android/medialib/AVCEncoder;->getInitHardEncodeRet()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/medialib/RecordInvoker;->setInitHardEncodeRet(I)I

    const/4 v11, 0x1

    if-nez v1, :cond_d4

    .line 2938
    sget-object v3, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->ByteVC1:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_ab

    .line 2939
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/medialib/AVCEncoder;->uninitAVCEncoder()V

    .line 2940
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v0

    sget-object v1, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->H264:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/AVCEncoder;->setCodecType(I)V

    .line 2941
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v3

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/ss/android/medialib/AVCEncoder;->initAVCEncoder(IIIIIIZ)Landroid/view/Surface;

    move-result-object v1

    :cond_ab
    if-nez v1, :cond_c3

    .line 2944
    iget-object p1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {p1}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/medialib/AVCEncoder;->uninitAVCEncoder()V

    .line 2945
    iget-object p1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    const/4 p2, 0x0

    # setter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$202(Lcom/ss/android/medialib/RecordInvoker;Lcom/ss/android/medialib/AVCEncoder;)Lcom/ss/android/medialib/AVCEncoder;

    .line 2946
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setHardEncoderStatus(Z)I

    return-object p2

    .line 2949
    :cond_c3
    iget-object p1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    sget-object p2, Lcom/ss/android/medialib/AVCEncoder$kCodecType;->H264:Lcom/ss/android/medialib/AVCEncoder$kCodecType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setCodecType(I)I

    .line 2950
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, v11}, Lcom/ss/android/medialib/RecordInvoker;->setHardEncoderStatus(Z)I

    goto :goto_de

    .line 2953
    :cond_d4
    const-string p1, "====== initAVCEncoder succeed ======"

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, v11}, Lcom/ss/android/medialib/RecordInvoker;->setHardEncoderStatus(Z)I

    .line 2957
    :goto_de
    const-string p0, "FaceBeautyManager onInitHardEncoder == exit"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public onInitHardEncoder(IIIIZ)Landroid/view/Surface;
    .registers 14

    .line 2900
    const-string v0, "FaceBeautyManager onInitHardEncoder == enter"

    const-string v1, "RecordInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\theight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v0

    if-nez v0, :cond_35

    .line 2904
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    new-instance v2, Lcom/ss/android/medialib/AVCEncoder;

    invoke-direct {v2}, Lcom/ss/android/medialib/AVCEncoder;-><init>()V

    # setter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0, v2}, Lcom/ss/android/medialib/RecordInvoker;->access$202(Lcom/ss/android/medialib/RecordInvoker;Lcom/ss/android/medialib/AVCEncoder;)Lcom/ss/android/medialib/AVCEncoder;

    .line 2906
    :cond_35
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/AVCEncoder;->setEncoderCaller(Lcom/ss/android/medialib/AVCEncoderInterface;)V

    .line 2907
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/ss/android/medialib/AVCEncoder;->initAVCEncoder(IIIIZ)Landroid/view/Surface;

    move-result-object p1

    .line 2908
    iget-object p2, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {p2}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ss/android/medialib/AVCEncoder;->getInitHardEncodeRet()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setInitHardEncodeRet(I)I

    if-nez p1, :cond_72

    .line 2910
    iget-object p1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {p1}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/medialib/AVCEncoder;->uninitAVCEncoder()V

    .line 2911
    iget-object p1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    const/4 p2, 0x0

    # setter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->access$202(Lcom/ss/android/medialib/RecordInvoker;Lcom/ss/android/medialib/AVCEncoder;)Lcom/ss/android/medialib/AVCEncoder;

    .line 2912
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setHardEncoderStatus(Z)I

    return-object p2

    .line 2915
    :cond_72
    const-string p2, "====== initAVCEncoder succeed ======"

    invoke-static {v1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/ss/android/medialib/RecordInvoker;->setHardEncoderStatus(Z)I

    .line 2919
    const-string p0, "FaceBeautyManager onInitHardEncoder == exit"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onSetCodecConfig(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 3030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetCodecConfig: data size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$000(Lcom/ss/android/medialib/RecordInvoker;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_27

    return-void

    .line 3032
    :cond_27
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    invoke-static {p0}, Lcom/ss/android/medialib/RecordInvoker;->access$000(Lcom/ss/android/medialib/RecordInvoker;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeSetCodecConfig(JLjava/nio/ByteBuffer;I)I
    invoke-static {p0, v0, v1, p1, v2}, Lcom/ss/android/medialib/RecordInvoker;->access$600(Lcom/ss/android/medialib/RecordInvoker;JLjava/nio/ByteBuffer;I)I

    return-void
.end method

.method public onSwapGlBuffers()V
    .registers 5

    .line 3024
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$000(Lcom/ss/android/medialib/RecordInvoker;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    return-void

    .line 3025
    :cond_d
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    invoke-static {p0}, Lcom/ss/android/medialib/RecordInvoker;->access$000(Lcom/ss/android/medialib/RecordInvoker;)J

    move-result-wide v0

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeOnSwapGlBuffers(J)V
    invoke-static {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->access$500(Lcom/ss/android/medialib/RecordInvoker;J)V

    return-void
.end method

.method public onUninitHardEncoder()V
    .registers 3

    .line 2970
    const-string v0, "FaceBeautyManager onUninitHardEncoder == enter"

    const-string v1, "RecordInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2973
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/medialib/AVCEncoder;->uninitAVCEncoder()V

    .line 2974
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v0, 0x0

    # setter for: Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;
    invoke-static {p0, v0}, Lcom/ss/android/medialib/RecordInvoker;->access$202(Lcom/ss/android/medialib/RecordInvoker;Lcom/ss/android/medialib/AVCEncoder;)Lcom/ss/android/medialib/AVCEncoder;

    .line 2975
    const-string p0, "====== uninitAVCEncoder ======"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    :cond_23
    const-string p0, "FaceBeautyManager onUninitHardEncoder == exit"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWriteFile(Ljava/nio/ByteBuffer;III)V
    .registers 12

    .line 3011
    iget-object p3, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    invoke-static {p3}, Lcom/ss/android/medialib/RecordInvoker;->access$000(Lcom/ss/android/medialib/RecordInvoker;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_d

    return-void

    .line 3012
    :cond_d
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$000(Lcom/ss/android/medialib/RecordInvoker;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    move-object v3, p1

    move v5, p2

    move v6, p4

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeWriteFile(JLjava/nio/ByteBuffer;III)I
    invoke-static/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->access$300(Lcom/ss/android/medialib/RecordInvoker;JLjava/nio/ByteBuffer;III)I

    return-void
.end method

.method public onWriteFile(Ljava/nio/ByteBuffer;JJIZ)V
    .registers 20

    .line 3017
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$000(Lcom/ss/android/medialib/RecordInvoker;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    return-void

    .line 3018
    :cond_d
    iget-object v1, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    invoke-static {v1}, Lcom/ss/android/medialib/RecordInvoker;->access$000(Lcom/ss/android/medialib/RecordInvoker;)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    move-object v4, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeWriteFile2(JLjava/nio/ByteBuffer;IJJIZ)I
    invoke-static/range {v1 .. v11}, Lcom/ss/android/medialib/RecordInvoker;->access$400(Lcom/ss/android/medialib/RecordInvoker;JLjava/nio/ByteBuffer;IJJIZ)I

    return-void
.end method

.method public setColorFormat(I)V
    .registers 6

    .line 2893
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    invoke-static {v0}, Lcom/ss/android/medialib/RecordInvoker;->access$000(Lcom/ss/android/medialib/RecordInvoker;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    return-void

    .line 2894
    :cond_d
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker$1;->this$0:Lcom/ss/android/medialib/RecordInvoker;

    # getter for: Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    invoke-static {p0}, Lcom/ss/android/medialib/RecordInvoker;->access$000(Lcom/ss/android/medialib/RecordInvoker;)J

    move-result-wide v0

    # invokes: Lcom/ss/android/medialib/RecordInvoker;->nativeSetColorFormat(JI)I
    invoke-static {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->access$100(Lcom/ss/android/medialib/RecordInvoker;JI)I

    return-void
.end method
