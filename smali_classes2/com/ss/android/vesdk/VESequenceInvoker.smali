.class public Lcom/ss/android/vesdk/VESequenceInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/internal/IVESequence;


# static fields
.field private static final AUDIO_VOLUME:Ljava/lang/String; = "audio volume"

.field private static final TAG:Ljava/lang/String; = "VEEditor_VESequenceInvoker"


# instance fields
.field private final mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

.field private final mVEEditor:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 57
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->getInternalNativeEditor()Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    return-void
.end method


# virtual methods
.method public addAudioTrack(Ljava/lang/String;IIIIZII)I
    .registers 19

    .line 807
    iget-object v9, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v9

    .line 808
    :try_start_3
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAudioTrack... "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " In "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Out "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " SeqIn "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " seqOut "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, -0x64

    if-eqz v0, :cond_65

    .line 811
    monitor-exit v9

    return v1

    :catchall_61
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d7

    :cond_65
    if-le p3, p2, :cond_d5

    if-gez p2, :cond_6b

    goto/16 :goto_d5

    :cond_6b
    if-le p5, p4, :cond_d3

    if-gez p4, :cond_70

    goto :goto_d3

    .line 820
    :cond_70
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->addAudioTrack(Ljava/lang/String;IIIIZII)I

    move-result v0

    .line 821
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object p0

    const/4 v6, 0x1

    invoke-virtual {p0, v6, v0}, Lcom/ss/android/ttve/common/TETrackIndexManager;->addTrack(II)I

    move-result p0
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_61

    .line 824
    :try_start_86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 825
    const-string v6, "path"

    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 826
    const-string p1, "sequenceIn"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 827
    const-string p1, "sequenceOut"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 828
    const-string p1, "trimIn"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 829
    const-string p1, "trimOut"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 830
    const-string p1, "resultCode"

    if-ltz p0, :cond_aa

    const/4 p2, 0x0

    goto :goto_ab

    :cond_aa
    move p2, p0

    :goto_ab
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 831
    const-string p1, "vesdk_event_editor_audio_track"

    const-string p2, "behavior"

    invoke-static {p1, v0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_b5
    .catch Lorg/json/JSONException; {:try_start_86 .. :try_end_b5} :catch_b6
    .catchall {:try_start_86 .. :try_end_b5} :catchall_61

    goto :goto_bb

    :catch_b6
    move-exception v0

    move-object p1, v0

    .line 833
    :try_start_b8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 836
    :goto_bb
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addAudioTrack... "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    monitor-exit v9

    return p0

    .line 817
    :cond_d3
    :goto_d3
    monitor-exit v9

    return v1

    .line 814
    :cond_d5
    :goto_d5
    monitor-exit v9

    return v1

    .line 839
    :goto_d7
    monitor-exit v9
    :try_end_d8
    .catchall {:try_start_b8 .. :try_end_d8} :catchall_61

    throw p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIZ)I
    .registers 16

    .line 741
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 742
    :try_start_3
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAudioTrack... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " In "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Out "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, -0x64

    if-eqz v0, :cond_3f

    .line 745
    monitor-exit v1

    return v2

    :catchall_3b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_be

    :cond_3f
    if-le p3, p2, :cond_bc

    if-gez p2, :cond_45

    goto/16 :goto_bc

    .line 751
    :cond_45
    const-string v0, "iesve_veeditor_import_music"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 753
    iget-object v4, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v6, 0x0

    sub-int v7, p3, p2

    move-object v5, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->addAudioTrack(Ljava/lang/String;IIIIZ)I

    move-result p1

    .line 754
    const-string p2, "VEEditor_VESequenceInvoker"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "trackIndexNative="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object p0

    invoke-virtual {p0, v3, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->addTrack(II)I

    move-result p0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_3b

    .line 758
    :try_start_79
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 759
    const-string p2, "path"

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    const-string p2, "trimIn"

    invoke-virtual {p1, p2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 761
    const-string p2, "trimOut"

    invoke-virtual {p1, p2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 762
    const-string p2, "resultCode"

    if-ltz p0, :cond_93

    const/4 p3, 0x0

    goto :goto_94

    :cond_93
    const/4 p3, -0x1

    :goto_94
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 763
    const-string p2, "vesdk_event_editor_audio_track"

    const-string p3, "behavior"

    invoke-static {p2, p1, p3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_9e} :catch_9f
    .catchall {:try_start_79 .. :try_end_9e} :catchall_3b

    goto :goto_a4

    :catch_9f
    move-exception v0

    move-object p1, v0

    .line 765
    :try_start_a1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 767
    :goto_a4
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addAudioTrack... "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    monitor-exit v1

    return p0

    .line 748
    :cond_bc
    :goto_bc
    monitor-exit v1

    return v2

    .line 769
    :goto_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_a1 .. :try_end_bf} :catchall_3b

    throw p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIZZ)I
    .registers 17

    .line 774
    iget-object v9, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v9

    .line 775
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAudioTrack... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " In "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, -0x64

    if-eqz v1, :cond_3e

    .line 778
    monitor-exit v9

    return v3

    :catchall_3b
    move-exception v0

    goto/16 :goto_be

    :cond_3e
    if-le p3, p2, :cond_bc

    if-gez p2, :cond_44

    goto/16 :goto_bc

    .line 784
    :cond_44
    const-string v1, "iesve_veeditor_import_music"

    const/4 v3, 0x0

    const/4 v10, 0x1

    invoke-static {v1, v10, v3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 786
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v3, 0x0

    sub-int v4, p3, p2

    move-object v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->addAudioTrack(Ljava/lang/String;IIIIZZ)I

    move-result v1

    .line 787
    const-string v3, "VEEditor_VESequenceInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trackIndexNative="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v0

    invoke-virtual {v0, v10, v1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->addTrack(II)I

    move-result v1
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_3b

    .line 791
    :try_start_7a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 792
    const-string v3, "path"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v2, "trimIn"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 794
    const-string v2, "trimOut"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 795
    const-string v2, "resultCode"

    if-ltz v1, :cond_94

    const/4 v3, 0x0

    goto :goto_95

    :cond_94
    const/4 v3, -0x1

    :goto_95
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 796
    const-string v2, "vesdk_event_editor_audio_track"

    const-string v3, "behavior"

    invoke-static {v2, v0, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_9f} :catch_a0
    .catchall {:try_start_7a .. :try_end_9f} :catchall_3b

    goto :goto_a4

    :catch_a0
    move-exception v0

    .line 798
    :try_start_a1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 800
    :goto_a4
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAudioTrack... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    monitor-exit v9

    return v1

    .line 781
    :cond_bc
    :goto_bc
    monitor-exit v9

    return v3

    .line 802
    :goto_be
    monitor-exit v9
    :try_end_bf
    .catchall {:try_start_a1 .. :try_end_bf} :catchall_3b

    throw v0
.end method

.method public addAudioTrackWithInfo(Ljava/lang/String;Ljava/lang/String;IIIIZZ)I
    .registers 19

    move/from16 v4, p6

    move/from16 v8, p8

    .line 844
    iget-object v9, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v9

    .line 845
    :try_start_7
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAudioTrack... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " In "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Out "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SeqIn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seqOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, -0x64

    if-eqz v0, :cond_5d

    .line 847
    monitor-exit v9

    return v1

    :catchall_59
    move-exception v0

    move-object p0, v0

    goto/16 :goto_103

    :cond_5d
    if-le p4, p3, :cond_101

    if-gez p3, :cond_63

    goto/16 :goto_101

    :cond_63
    if-le v4, p5, :cond_ff

    if-gez p5, :cond_69

    goto/16 :goto_ff

    :cond_69
    if-eqz v8, :cond_70

    .line 857
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 860
    :cond_70
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move v3, p5

    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->addAudioTrack(Ljava/lang/String;Ljava/lang/String;IIIIZZ)I

    move-result p2

    .line 861
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2}, Lcom/ss/android/ttve/common/TETrackIndexManager;->addTrack(II)I

    move-result p2
    :try_end_86
    .catchall {:try_start_7 .. :try_end_86} :catchall_59

    const/4 v7, 0x0

    .line 865
    :try_start_87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 866
    const-string v8, "path"

    invoke-virtual {v0, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 867
    const-string p1, "sequenceIn"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 868
    const-string p1, "sequenceOut"

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 869
    const-string p1, "trimIn"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 870
    const-string p1, "trimOut"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 871
    const-string p1, "resultCode"

    if-ltz p2, :cond_ab

    move p3, v7

    goto :goto_ac

    :cond_ab
    move p3, p2

    :goto_ac
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 872
    const-string p1, "vesdk_event_editor_audio_track"

    const-string p3, "behavior"

    invoke-static {p1, v0, p3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_b6} :catch_b7
    .catchall {:try_start_87 .. :try_end_b6} :catchall_59

    goto :goto_bc

    :catch_b7
    move-exception v0

    move-object p1, v0

    .line 874
    :try_start_b9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_bc
    if-eqz p8, :cond_e7

    .line 878
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result p3

    invoke-virtual {p1, v7, p3, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 879
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v7}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_e7

    .line 881
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addAudioTrack Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    monitor-exit v9

    return p0

    .line 886
    :cond_e7
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addAudioTrack... "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    monitor-exit v9

    return p2

    .line 853
    :cond_ff
    :goto_ff
    monitor-exit v9

    return v1

    .line 850
    :cond_101
    :goto_101
    monitor-exit v9

    return v1

    .line 889
    :goto_103
    monitor-exit v9
    :try_end_104
    .catchall {:try_start_b9 .. :try_end_104} :catchall_59

    throw p0
.end method

.method public addAudioTrackWithInfo(Ljava/lang/String;Ljava/lang/String;IIIIZZZ)I
    .registers 21

    move/from16 v3, p5

    move/from16 v4, p6

    .line 894
    iget-object v10, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v10

    .line 895
    :try_start_7
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAudioTrack... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " In "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Out "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " SeqIn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seqOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isCycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, -0x64

    if-eqz v0, :cond_5f

    .line 897
    monitor-exit v10

    return v1

    :catchall_5b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_106

    :cond_5f
    if-le p4, p3, :cond_104

    if-gez p3, :cond_65

    goto/16 :goto_104

    :cond_65
    if-le v4, v3, :cond_102

    if-gez v3, :cond_6b

    goto/16 :goto_102

    :cond_6b
    if-eqz p8, :cond_72

    .line 907
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 910
    :cond_72
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->addAudioTrack(Ljava/lang/String;Ljava/lang/String;IIIIZZZ)I

    move-result p2

    .line 911
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2}, Lcom/ss/android/ttve/common/TETrackIndexManager;->addTrack(II)I

    move-result p2
    :try_end_89
    .catchall {:try_start_7 .. :try_end_89} :catchall_5b

    const/4 v7, 0x0

    .line 915
    :try_start_8a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 916
    const-string v8, "path"

    invoke-virtual {v0, v8, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 917
    const-string p1, "sequenceIn"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 918
    const-string p1, "sequenceOut"

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 919
    const-string p1, "trimIn"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 920
    const-string p1, "trimOut"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 921
    const-string p1, "resultCode"

    if-ltz p2, :cond_ae

    move v1, v7

    goto :goto_af

    :cond_ae
    move v1, p2

    :goto_af
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 922
    const-string p1, "vesdk_event_editor_audio_track"

    const-string v1, "behavior"

    invoke-static {p1, v0, v1}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_b9} :catch_ba
    .catchall {:try_start_8a .. :try_end_b9} :catchall_5b

    goto :goto_bf

    :catch_ba
    move-exception v0

    move-object p1, v0

    .line 924
    :try_start_bc
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_bf
    if-eqz p8, :cond_ea

    .line 928
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v0

    invoke-virtual {p1, v7, v0, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 929
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v7}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_ea

    .line 931
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addAudioTrack Prepare Engine failed, ret = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    monitor-exit v10

    return p0

    .line 936
    :cond_ea
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addAudioTrack... "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    monitor-exit v10

    return p2

    .line 903
    :cond_102
    :goto_102
    monitor-exit v10

    return v1

    .line 900
    :cond_104
    :goto_104
    monitor-exit v10

    return v1

    .line 939
    :goto_106
    monitor-exit v10
    :try_end_107
    .catchall {:try_start_bc .. :try_end_107} :catchall_5b

    throw p0
.end method

.method public addAudioTrackWithStruct(Lcom/ss/android/vesdk/clipparam/VECommonClipParam;Z)I
    .registers 9

    .line 673
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 674
    :try_start_3
    iget-object v1, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, -0x64

    if-eqz v1, :cond_12

    .line 675
    monitor-exit v0

    return v2

    :catchall_f
    move-exception p0

    goto/16 :goto_9a

    .line 677
    :cond_12
    iget v1, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->trimOut:I

    iget v3, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->trimIn:I

    if-le v1, v3, :cond_98

    if-gez v3, :cond_1c

    goto/16 :goto_98

    .line 680
    :cond_1c
    iget v2, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->seqOut:I

    iget v4, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->seqIn:I

    const/4 v5, 0x0

    if-le v2, v4, :cond_25

    if-gez v4, :cond_2a

    .line 681
    :cond_25
    iput v5, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->seqIn:I

    sub-int/2addr v1, v3

    .line 682
    iput v1, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->seqOut:I

    .line 685
    :cond_2a
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->addAudioTrackWithStruct(Lcom/ss/android/vesdk/clipparam/VECommonClipParam;Z)I

    move-result p2

    .line 686
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Lcom/ss/android/ttve/common/TETrackIndexManager;->addTrack(II)I

    move-result p0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_f

    .line 690
    :try_start_3b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 691
    const-string v2, "path"

    iget-object v3, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    const-string v2, "sequenceIn"

    iget v3, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->seqIn:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 693
    const-string v2, "sequenceOut"

    iget v3, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->seqOut:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 694
    const-string v2, "trimIn"

    iget v3, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->trimIn:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 695
    const-string v2, "trimOut"

    iget p1, p1, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->trimOut:I

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 696
    const-string p1, "resultCode"

    if-ltz p0, :cond_68

    goto :goto_69

    :cond_68
    move v5, p0

    :goto_69
    invoke-virtual {v1, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 697
    const-string p1, "vesdk_event_editor_audio_track"

    const-string v2, "behavior"

    invoke-static {p1, v1, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_73} :catch_74
    .catchall {:try_start_3b .. :try_end_73} :catchall_f

    goto :goto_78

    :catch_74
    move-exception p1

    .line 699
    :try_start_75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 702
    :goto_78
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAudioTrackWithStruct, trackIndexNative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", trackIndex: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    monitor-exit v0

    return p0

    .line 678
    :cond_98
    :goto_98
    monitor-exit v0

    return v2

    .line 704
    :goto_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_75 .. :try_end_9b} :catchall_f

    throw p0
.end method

.method public addClipAuxiliaryParam(II[Lcom/ss/android/vesdk/clipparam/VEClipAuxiliaryParam;)I
    .registers 9

    const/16 v0, -0x64

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    if-nez p1, :cond_9

    :cond_7
    if-gez p2, :cond_28

    .line 711
    :cond_9
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addClipAuxiliaryParam, invalid trackType: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", trackIndex: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_28
    if-eqz p3, :cond_9e

    .line 714
    array-length v2, p3

    if-gtz v2, :cond_2e

    goto :goto_9e

    .line 718
    :cond_2e
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addClipAuxiliaryParam, trackType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", trackIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", auxiliaryParamArray size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v2

    if-ne p1, v1, :cond_67

    .line 723
    :try_start_5a
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result v0

    goto :goto_76

    :catchall_65
    move-exception p0

    goto :goto_9c

    :cond_67
    if-nez p1, :cond_75

    .line 725
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result v0

    goto :goto_76

    :cond_75
    move v0, p2

    .line 727
    :goto_76
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addClipAuxiliaryParam, trackIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", nativeTrackType: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, v0, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->addClipAuxiliaryParam(II[Lcom/ss/android/vesdk/clipparam/VEClipAuxiliaryParam;)I

    move-result p0

    monitor-exit v2

    return p0

    .line 730
    :goto_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_5a .. :try_end_9d} :catchall_65

    throw p0

    .line 715
    :cond_9e
    :goto_9e
    const-string p0, "VEEditor_VESequenceInvoker"

    const-string p1, "addClipAuxiliaryParam, auxiliaryParamArray is empty"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public addExternalVideoTrackWithFileInfo(Ljava/lang/String;Ljava/lang/String;IIIII)I
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v14, p7

    .line 1100
    iget-object v15, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v15

    .line 1101
    :try_start_13
    const-string v7, "VEEditor_VESequenceInvoker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addExternalVideoTrack... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v7, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    if-eqz v2, :cond_61

    .line 1105
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    :goto_5c
    move-object v9, v7

    goto :goto_63

    :catchall_5e
    move-exception v0

    goto/16 :goto_ff

    :cond_61
    const/4 v7, 0x0

    goto :goto_5c

    .line 1107
    :goto_63
    iget-object v7, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v5}, [I

    move-result-object v10

    filled-new-array {v6}, [I

    move-result-object v11

    filled-new-array {v3}, [I

    move-result-object v12

    filled-new-array {v4}, [I

    move-result-object v13

    invoke-virtual/range {v7 .. v14}, Lcom/ss/android/ttve/nativePort/TEInterface;->addExternalVideoTrack([Ljava/lang/String;[Ljava/lang/String;[I[I[I[II)I

    move-result v7

    .line 1108
    iget-object v8, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v8}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v7}, Lcom/ss/android/ttve/common/TETrackIndexManager;->addTrack(II)I

    move-result v7

    .line 1110
    iget-object v8, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v9, v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 1111
    iget-object v0, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0, v11}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result v0

    if-eqz v0, :cond_b3

    .line 1113
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addExternalVideoTrack Prepare Engine failed, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    monitor-exit v15
    :try_end_b2
    .catchall {:try_start_13 .. :try_end_b2} :catchall_5e

    return v0

    .line 1118
    :cond_b3
    :try_start_b3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1119
    const-string v8, "file"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1120
    const-string v1, "fileInfo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1121
    const-string v1, "trimIn"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1122
    const-string v1, "trimOut"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1123
    const-string v1, "sequenceIn"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1124
    const-string v1, "sequenceOut"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1125
    const-string v1, "layer"

    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1126
    const-string v1, "vesdk_event_editor_external_video_track"

    const-string v2, "behavior"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_e2
    .catch Lorg/json/JSONException; {:try_start_b3 .. :try_end_e2} :catch_e3
    .catchall {:try_start_b3 .. :try_end_e2} :catchall_5e

    goto :goto_e7

    :catch_e3
    move-exception v0

    .line 1128
    :try_start_e4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1130
    :goto_e7
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addExternalVideoTrack success index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    monitor-exit v15

    return v7

    .line 1132
    :goto_ff
    monitor-exit v15
    :try_end_100
    .catchall {:try_start_e4 .. :try_end_100} :catchall_5e

    throw v0
.end method

.method public addSegmentVolume([I[I[I[I[F)[I
    .registers 15

    .line 1051
    array-length v0, p3

    .line 1052
    new-array v3, v0, [Ljava/lang/String;

    .line 1053
    new-array v7, v0, [I

    const/4 v8, 0x0

    move v1, v8

    :goto_7
    if-ge v1, v0, :cond_13

    .line 1055
    const-string v2, "audio volume filter"

    aput-object v2, v3, v1

    const/4 v2, 0x1

    .line 1056
    aput v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1058
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSegmentVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  trackTypes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " volumes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-static {p5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1058
    const-string v2, "VEEditor_VESequenceInvoker"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move-object v2, p1

    move-object v6, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I)[I

    move-result-object p1

    :goto_4f
    if-ge v8, v0, :cond_70

    .line 1063
    iget-object p2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget p3, p1, v8

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p5, v8

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "audio volume"

    invoke-virtual {p2, p3, v1, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    :cond_70
    return-object p1
.end method

.method public changeBitmapRes([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 23

    .line 273
    const-string v0, "changeBitmapRes reInit..."

    const-string v1, "VEEditor_VESequenceInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_25

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "stop in changeRes failed, ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 282
    :cond_25
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/ss/android/vesdk/VEEditor;->init2([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result p1

    if-eqz p1, :cond_52

    .line 284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init2 in changeRes failed, ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 289
    :cond_52
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 290
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    return p0
.end method

.method public changeBitmapRes([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;II)I
    .registers 25

    .line 295
    const-string v0, "changeBitmapRes reInit..."

    const-string v1, "VEEditor_VESequenceInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_25

    .line 300
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "stop in changeRes failed, ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 304
    :cond_25
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Lcom/ss/android/vesdk/VEEditor;->init2([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result p1

    if-eqz p1, :cond_52

    .line 306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init2 in changeRes failed, ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 311
    :cond_52
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 312
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setWidthHeight(II)V

    .line 313
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    return p0
.end method

.method public changeRes([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[ILcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 21

    .line 221
    const-string v0, "changeRes reInit..."

    const-string v1, "VEEditor_VESequenceInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_25

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "stop in changeRes failed, ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 230
    :cond_25
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/ss/android/vesdk/VEEditor;->init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[ILcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result p1

    if-eqz p1, :cond_4f

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init2 in changeRes failed, ret = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 237
    :cond_4f
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 238
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p1

    if-nez p1, :cond_65

    .line 240
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/ttve/common/TETrackIndexManager;->reset()V

    :cond_65
    return p1
.end method

.method public changeRes([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 26

    move-object/from16 v0, p0

    .line 247
    const-string v1, "changeRes2 reInit..."

    const-string v2, "VEEditor_VESequenceInvoker"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_27

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop in changeRes failed, ret = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 256
    :cond_27
    iget-object v4, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v14, 0x0

    move-object/from16 v13, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v4 .. v15}, Lcom/ss/android/vesdk/VEEditor;->init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result v1

    if-eqz v1, :cond_59

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init2 in changeRes failed, ret = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 263
    :cond_59
    iget-object v1, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 264
    iget-object v1, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result v1

    if-nez v1, :cond_6f

    .line 266
    iget-object v0, v0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETrackIndexManager;->reset()V

    :cond_6f
    return v1
.end method

.method public deleteAudioTrack(IZ)I
    .registers 7

    .line 1016
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1017
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAudioTrack... trackIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " needPrepare:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_75

    if-eqz p2, :cond_2d

    .line 1020
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_79

    .line 1022
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result v1

    .line 1023
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->removeTrack(II)V

    .line 1024
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->deleteAudioTrack(IZ)I

    move-result p1

    if-eqz p2, :cond_73

    .line 1026
    iget-object p2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 1027
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v3}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_73

    .line 1029
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAudioTrack Prepare Engine failed, ret = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    monitor-exit v0

    return p0

    .line 1033
    :cond_73
    monitor-exit v0

    return p1

    :cond_75
    const/16 p0, -0x64

    .line 1035
    monitor-exit v0

    return p0

    .line 1037
    :goto_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_2b

    throw p0
.end method

.method public deleteClip(II)I
    .registers 7

    .line 460
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 461
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteClip, trackType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "clipIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 464
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->deleteClip(III)I

    move-result p1

    if-gez p1, :cond_49

    .line 466
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteClip failed, ret = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    monitor-exit v0

    return p1

    :catchall_47
    move-exception p0

    goto :goto_7a

    .line 469
    :cond_49
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1, v2}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 471
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result p2

    const/4 v1, 0x1

    invoke-virtual {p1, v2, p2, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 472
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_78

    .line 474
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepare Engine failed, ret = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    monitor-exit v0

    return p0

    .line 477
    :cond_78
    monitor-exit v0

    return v2

    .line 478
    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_47

    throw p0
.end method

.method public deleteExternalVideoTrack(I)I
    .registers 7

    .line 1173
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1174
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteExternalVideoTrack... trackIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_21

    const/16 p0, -0x64

    .line 1176
    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_6d

    .line 1178
    :cond_21
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 1179
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result v1

    .line 1180
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->removeTrack(II)V

    .line 1181
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->deleteExternalVideoTrack(I)I

    move-result p1

    .line 1183
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 1184
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v4}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_6b

    .line 1186
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteExternalVideoTrack Prepare Engine failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    monitor-exit v0

    return p0

    .line 1189
    :cond_6b
    monitor-exit v0

    return p1

    .line 1190
    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_1f

    throw p0
.end method

.method public expandTimeline(I)I
    .registers 4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expandTimeline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VESequenceInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->expandTimeline(I)I

    move-result p0

    return p0
.end method

.method public getAllClips(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;"
        }
    .end annotation

    .line 627
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getAllClips(II)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 628
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_30

    .line 629
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAllClips: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/clipparam/VEClipParam;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/clipparam/VEClipParam;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VEEditor_VESequenceInvoker"

    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_30
    return-object p0
.end method

.method public getAllVideoFileInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipVideoFileInfoParam;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 657
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getAllVideoFileInfos()Ljava/util/List;

    move-result-object p0

    .line 658
    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 659
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getClipFileInfoString(III)Ljava/lang/String;
    .registers 8

    .line 636
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 637
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClipFileInfoString... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->getClipInfoString(III)Ljava/lang/String;

    move-result-object p0

    .line 639
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getClipFileInfoString result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    monitor-exit v0

    return-object p0

    :catchall_47
    move-exception p0

    .line 641
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public getClipFileInfoStringWithPath(IIILjava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 646
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 647
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClipFileInfoStringWithPath... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->getClipInfoStringWithPath(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 649
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getClipInfoStringWithPath result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    monitor-exit v0

    return-object p0

    :catchall_47
    move-exception p0

    .line 651
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public getSequenceUniqueKey()Ljava/lang/String;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getSequenceUniqueKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoClipEndTime(I)J
    .registers 4

    .line 735
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getBusinessManager()Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;->getVideoTrackIndex()I

    move-result v0

    .line 736
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getClipSequenceOut(III)J

    move-result-wide p0

    return-wide p0
.end method

.method public getVolume(III)F
    .registers 6

    .line 1090
    const-string v0, "VEEditor_VESequenceInvoker"

    const-string v1, "getVolume..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p3, :cond_24

    .line 1091
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v0

    if-le p3, v0, :cond_12

    goto :goto_24

    .line 1094
    :cond_12
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p1

    .line 1095
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p2, p1, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->getTrackVolume(III)F

    move-result p0

    return p0

    :cond_24
    :goto_24
    const/high16 p0, -0x3d380000    # -100.0f

    return p0
.end method

.method public insertClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 13

    .line 318
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 319
    :try_start_3
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertClip, trackType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "clipIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 322
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v4, 0x0

    move v3, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->insertClip(IIILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_7e

    .line 325
    :try_start_31
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 326
    const-string p3, "trackType"

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string p3, "clipIndex"

    invoke-virtual {p2, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string p3, "clipFilePath"

    iget-object p4, v6, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipFilePath:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const-string p3, "sourceType"

    iget p4, v6, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->sourceType:I

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    const-string p3, "clipHeight"

    iget p4, v6, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipHeight:I

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string p3, "clipWidth"

    iget p4, v6, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->clipWidth:I

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string p3, "trimIn"

    iget p4, v7, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string p3, "trimOut"

    iget p4, v7, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    const-string p3, "speed"

    iget-wide v2, v7, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->speed:D

    invoke-virtual {p2, p3, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 335
    const-string p3, "resultCode"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 336
    const-string p3, "vesdk_event_editor_clip_insert"

    const-string p4, "behavior"

    invoke-static {p3, p2, p4}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_7d} :catch_81
    .catchall {:try_start_31 .. :try_end_7d} :catchall_7e

    goto :goto_86

    :catchall_7e
    move-exception v0

    move-object p0, v0

    goto :goto_d2

    :catch_81
    move-exception v0

    move-object p2, v0

    .line 338
    :try_start_83
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_86
    if-gez p1, :cond_a0

    .line 342
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insertClip failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    monitor-exit v1

    return p1

    .line 345
    :cond_a0
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 347
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result p3

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 348
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_d0

    .line 350
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    monitor-exit v1

    return p0

    .line 354
    :cond_d0
    monitor-exit v1

    return p2

    .line 355
    :goto_d2
    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_83 .. :try_end_d3} :catchall_7e

    throw p0
.end method

.method public insertClips(IILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;",
            ">;)I"
        }
    .end annotation

    .line 360
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 361
    :try_start_3
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertClip, trackType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "clipIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    .line 362
    :goto_23
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 363
    const-string v3, "VEEditor_VESequenceInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "clipSourceParams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :catchall_54
    move-exception v0

    move-object p0, v0

    goto/16 :goto_fe

    :cond_58
    move v2, v0

    .line 365
    :goto_59
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8a

    .line 366
    const-string v3, "VEEditor_VESequenceInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "clipTimelineParams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 368
    :cond_8a
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move v6, p2

    move p2, v0

    .line 370
    :goto_91
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_cd

    .line 371
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;

    const/4 v5, 0x0

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->insertClip(IIILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p1

    if-gez p1, :cond_c7

    .line 373
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "insertClip failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    monitor-exit v1

    return p1

    :cond_c7
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 p2, p2, 0x1

    move p1, v4

    goto :goto_91

    .line 378
    :cond_cd
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 380
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, v0, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 381
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_fc

    .line 383
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    monitor-exit v1

    return p0

    .line 386
    :cond_fc
    monitor-exit v1

    return v0

    .line 387
    :goto_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_3 .. :try_end_ff} :catchall_54

    throw p0
.end method

.method public moveClip(IIIZ)I
    .registers 9

    .line 392
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 393
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveClip, trackType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isMoveEffect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 396
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->moveClip(IIIZ)I

    move-result p1

    if-gez p1, :cond_58

    .line 398
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "moveClip failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    monitor-exit v0

    return p1

    :catchall_56
    move-exception p0

    goto :goto_80

    .line 401
    :cond_58
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 403
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_7e

    .line 405
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    monitor-exit v0

    return p0

    .line 408
    :cond_7e
    monitor-exit v0

    return p2

    .line 409
    :goto_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_56

    throw p0
.end method

.method public removeSegmentVolume(I)I
    .registers 2

    if-gez p1, :cond_5

    const/16 p0, -0x64

    return p0

    .line 1085
    :cond_5
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeFilter([I)I

    move-result p0

    return p0
.end method

.method public replaceAudioClip(ILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 8

    .line 437
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 438
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaceAudioClip, clipIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 441
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->replaceClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p1

    if-gez p1, :cond_41

    .line 443
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "replaceClip failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    monitor-exit v0

    return p1

    :catchall_3f
    move-exception p0

    goto :goto_73

    .line 446
    :cond_41
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 448
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result p3

    invoke-virtual {p1, p2, p3, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 449
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_71

    .line 451
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    monitor-exit v0

    return p0

    .line 454
    :cond_71
    monitor-exit v0

    return p2

    .line 455
    :goto_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_3f

    throw p0
.end method

.method public replaceClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 9

    .line 414
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 415
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaceClip, trackType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "clipIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 418
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->replaceClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p1

    if-gez p1, :cond_48

    .line 420
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "replaceClip failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    monitor-exit v0

    return p1

    :catchall_46
    move-exception p0

    goto :goto_7a

    .line 423
    :cond_48
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 425
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result p3

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 426
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_78

    .line 428
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    monitor-exit v0

    return p0

    .line 431
    :cond_78
    monitor-exit v0

    return p2

    .line 432
    :goto_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_46

    throw p0
.end method

.method public setCanvasMinDuration(IZ)I
    .registers 8

    .line 160
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 161
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCanvasMinDuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", needPrepare: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2b

    .line 165
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_61

    .line 167
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, p1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTrackMinMaxDuration(IIII)I

    move-result p1

    .line 168
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    if-eqz p2, :cond_5f

    .line 170
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v3}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_5f

    .line 172
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioTrack Prepare Engine failed, ret = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    monitor-exit v0

    return p0

    .line 176
    :cond_5f
    monitor-exit v0

    return p1

    .line 177
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_29

    throw p0
.end method

.method public setClipReservePitch(IIIZ)I
    .registers 14

    .line 665
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 666
    :try_start_3
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClipReservePitch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v7, "audio reserve pitch"

    if-eqz p4, :cond_41

    const-string p0, "1.0"

    :goto_39
    move-object v8, p0

    move v4, p1

    move v5, p2

    move v6, p3

    goto :goto_44

    :catchall_3e
    move-exception v0

    move-object p0, v0

    goto :goto_4a

    :cond_41
    const-string p0, "0.0"

    goto :goto_39

    :goto_44
    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->setClipAttr(IIILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v1

    return p0

    .line 668
    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_3e

    throw p0
.end method

.method public setExtVideoTrackSeqIn(II)I
    .registers 7

    .line 1137
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1138
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExtVideoTrackSeqIn trackIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sequenceIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_6b

    if-gez p2, :cond_26

    goto :goto_6b

    .line 1143
    :cond_26
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 1145
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p1

    .line 1146
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setExtTrackSeqIn(III)I

    move-result p1

    .line 1148
    iget-object p2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v1, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 1149
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_69

    .line 1151
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExtVideoTrackSeqIn Prepare Engine failed, ret = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    monitor-exit v0

    return p0

    :catchall_67
    move-exception p0

    goto :goto_76

    .line 1154
    :cond_69
    monitor-exit v0

    return p1

    .line 1140
    :cond_6b
    :goto_6b
    const-string p0, "VEEditor_VESequenceInvoker"

    const-string p1, "setExtVideoTrackSeqIn invalid param"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    .line 1141
    monitor-exit v0

    return p0

    .line 1155
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_67

    throw p0
.end method

.method public setExternalVideoTrackLayer(II)I
    .registers 7

    .line 1160
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1161
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExternalVideoTrackLayer trackIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", layer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_3c

    if-gtz p2, :cond_26

    goto :goto_3c

    .line 1166
    :cond_26
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p1

    .line 1167
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTrackLayer(III)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_3a
    move-exception p0

    goto :goto_47

    .line 1163
    :cond_3c
    :goto_3c
    const-string p0, "VEEditor_VESequenceInvoker"

    const-string p1, "setExternalVideoTrackLayer invalid param"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    .line 1164
    monitor-exit v0

    return p0

    .line 1168
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_3a

    throw p0
.end method

.method public setFileRotate(IILcom/ss/android/vesdk/ROTATE_DEGREE;)I
    .registers 12

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFileRotate..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VESequenceInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const-string v6, "clip rotate"

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->setClipAttr(IIILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setInOut(II)I
    .registers 7

    .line 68
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 69
    :try_start_3
    new-instance v1, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 70
    const-string v2, "iesve_veeditor_cut_duration"

    sub-int v3, p2, p1

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 71
    const-string v2, "iesve_veeditor_cut_duration"

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 73
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInOut... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 76
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 77
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_46
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public setInOut(IILcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;)I
    .registers 8

    .line 83
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 84
    :try_start_3
    new-instance v1, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 85
    const-string v2, "iesve_veeditor_cut_duration"

    sub-int v3, p2, p1

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 86
    const-string v2, "iesve_veeditor_cut_duration"

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 88
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInOut... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 91
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p3}, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->getValue()I

    move-result p3

    invoke-virtual {v1, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 92
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_56
    move-exception p0

    .line 93
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public setTimeRange(IILcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;)I
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p3}, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->getValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 100
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setTrackDurationType(III)I
    .registers 4

    .line 63
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTrackDurationType(III)I

    move-result p0

    return p0
.end method

.method public setVolume(IIF)Z
    .registers 8

    .line 1042
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 1043
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolume... index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " volume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p1

    .line 1045
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p2, p1, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTrackVolume(IIF)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_3c
    move-exception p0

    .line 1046
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public updateAudioTrack(IIIIIZII)I
    .registers 13

    .line 992
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 993
    :try_start_3
    const-string v0, "VEEditor_VESequenceInvoker"

    const-string v2, "updateAudioTrack..."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x64

    if-gez p1, :cond_13

    .line 995
    monitor-exit v1

    return v0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_41

    :cond_13
    if-le p3, p2, :cond_3f

    if-gez p2, :cond_18

    goto :goto_3f

    :cond_18
    if-le p5, p4, :cond_3d

    if-gez p4, :cond_1d

    goto :goto_3d

    :cond_1d
    if-le p8, p7, :cond_3b

    if-gez p7, :cond_22

    goto :goto_3b

    .line 1009
    :cond_22
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p1

    .line 1010
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move v3, p4

    move p4, p2

    move p2, v3

    move v3, p5

    move p5, p3

    move p3, v3

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateAudioTrack(IIIIIZII)I

    move-result p0

    monitor-exit v1

    return p0

    .line 1006
    :cond_3b
    :goto_3b
    monitor-exit v1

    return v0

    .line 1002
    :cond_3d
    :goto_3d
    monitor-exit v1

    return v0

    .line 998
    :cond_3f
    :goto_3f
    monitor-exit v1

    return v0

    .line 1011
    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_10

    throw p0
.end method

.method public updateAudioTrack(IIIIIZZ)I
    .registers 19

    .line 960
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 961
    :try_start_3
    const-string v0, "VEEditor_VESequenceInvoker"

    const-string v2, "updateAudioTrack..."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x64

    if-gez p1, :cond_13

    .line 963
    monitor-exit v1

    return v0

    :catchall_10
    move-exception v0

    move-object p0, v0

    goto :goto_70

    :cond_13
    if-le p3, p2, :cond_6e

    if-gez p2, :cond_18

    goto :goto_6e

    :cond_18
    move/from16 v5, p5

    if-le v5, p4, :cond_6c

    if-gez p4, :cond_1f

    goto :goto_6c

    :cond_1f
    if-eqz p7, :cond_26

    .line 974
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 976
    :cond_26
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v0, v10, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result v3

    .line 977
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move v6, p2

    move v7, p3

    move v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateAudioTrack(IIIIIZZ)I

    move-result p1

    if-eqz p7, :cond_6a

    .line 979
    iget-object p2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p3, v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 980
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p4}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_6a

    .line 982
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateAudioTrack Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    monitor-exit v1

    return p0

    .line 986
    :cond_6a
    monitor-exit v1

    return p1

    .line 970
    :cond_6c
    :goto_6c
    monitor-exit v1

    return v0

    .line 966
    :cond_6e
    :goto_6e
    monitor-exit v1

    return v0

    .line 987
    :goto_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_10

    throw p0
.end method

.method public updateAudioTrack(IIIZ)I
    .registers 16

    .line 944
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v1

    .line 945
    :try_start_3
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAudioTrack...  Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " In "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Out "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x64

    if-gez p1, :cond_3a

    .line 947
    monitor-exit v1

    return v0

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_5b

    :cond_3a
    if-le p3, p2, :cond_59

    if-gez p2, :cond_3f

    goto :goto_59

    .line 953
    :cond_3f
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result v4

    .line 954
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    sub-int v6, p3, p2

    const/4 v10, 0x0

    const/4 v5, 0x0

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateAudioTrack(IIIIIZZ)I

    move-result p0

    monitor-exit v1

    return p0

    .line 950
    :cond_59
    :goto_59
    monitor-exit v1

    return v0

    .line 955
    :goto_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_37

    throw p0
.end method

.method public updateCanvasResolutionParam(Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)I
    .registers 7

    .line 565
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 566
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCanvasResolutionParam "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v2, p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    iget v3, p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateCanvasResolution(II)I

    move-result v1

    .line 569
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getInitResolution()[I

    move-result-object v2

    .line 571
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getFieldInitSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    iput v4, v3, Lcom/ss/android/vesdk/VESize;->width:I

    .line 572
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getFieldInitSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    const/4 v4, 0x1

    aget v2, v2, v4

    iput v2, v3, Lcom/ss/android/vesdk/VESize;->height:I

    .line 574
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getSurfaceWidth()I

    move-result v2

    if-lez v2, :cond_63

    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getSurfaceHeight()I

    move-result v2

    if-lez v2, :cond_63

    .line 575
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->updateInitDisplaySize()V
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_61

    goto :goto_63

    :catchall_61
    move-exception p0

    goto :goto_a5

    .line 579
    :cond_63
    :goto_63
    :try_start_63
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 580
    const-string v2, "sourceType"

    iget v3, p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->sourceType:I

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 581
    const-string v2, "color"

    iget v3, p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->color:I

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 582
    const-string v2, "radius"

    iget v3, p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->radius:I

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 583
    const-string v2, "imagePath"

    iget-object v3, p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->imagePath:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    const-string v2, "height"

    iget v3, p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 585
    const-string v2, "width"

    iget p1, p1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    invoke-virtual {p0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 586
    const-string p1, "resultCode"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 587
    const-string p1, "vesdk_event_editor_canvas"

    const-string v2, "behavior"

    invoke-static {p1, p0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_9e} :catch_9f
    .catchall {:try_start_63 .. :try_end_9e} :catchall_61

    goto :goto_a3

    :catch_9f
    move-exception p0

    .line 589
    :try_start_a0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 591
    :goto_a3
    monitor-exit v0

    return v1

    .line 592
    :goto_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_61

    throw p0
.end method

.method public updateClipSourceParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I
    .registers 9

    .line 527
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 528
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateClipSourceParam, trackType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " trackIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2, p4}, Lcom/ss/android/vesdk/VEEditor;->changeMvUserVideoInfo(I[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)V

    .line 535
    array-length v1, p3

    array-length v2, p4

    if-ne v1, v2, :cond_a0

    array-length v1, p3

    if-gtz v1, :cond_2f

    goto :goto_a0

    .line 540
    :cond_2f
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_44

    .line 543
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p2

    goto :goto_51

    :catchall_42
    move-exception p0

    goto :goto_ab

    :cond_44
    if-nez p1, :cond_51

    .line 545
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p2

    .line 547
    :cond_51
    :goto_51
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateClipsSourceParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I

    move-result p1

    if-gez p1, :cond_6f

    .line 549
    const-string p2, "VEEditor_VESequenceInvoker"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updateClipSourceParam failed, ret = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_6f
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 553
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result p3

    invoke-virtual {p1, p2, p3, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 554
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_9e

    .line 556
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    monitor-exit v0

    return p0

    .line 559
    :cond_9e
    monitor-exit v0

    return p2

    .line 536
    :cond_a0
    :goto_a0
    const-string p0, "VEEditor_VESequenceInvoker"

    const-string p1, "updateClipSourceParam failed, clipIndexes not match clipSourceParams"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    .line 537
    monitor-exit v0

    return p0

    .line 560
    :goto_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_3 .. :try_end_ac} :catchall_42

    throw p0
.end method

.method public updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 11

    .line 483
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 488
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, p4, v2}, Lcom/ss/android/vesdk/VEEditor;->changeMvUserVideoInfo(I[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)V

    .line 490
    const-string v1, "VEEditor_VESequenceInvoker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateClipsTimelineParam, trackType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " trackIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    array-length v1, p3

    array-length v2, p4

    const/16 v3, -0x64

    if-ne v1, v2, :cond_ef

    array-length v1, p3

    if-gtz v1, :cond_32

    goto/16 :goto_ef

    :cond_32
    const/4 v1, 0x0

    move v2, v1

    .line 496
    :goto_34
    array-length v4, p4

    if-ge v2, v4, :cond_7f

    .line 497
    aget-object v4, p4, v2

    iget v5, v4, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    if-ltz v5, :cond_7c

    iget v4, v4, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    if-gt v5, v4, :cond_7c

    .line 498
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateClipsTimelineParam invalid param trimIn["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p4, v2

    iget p2, p2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimIn:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", trimOut["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p4, v2

    iget p2, p2, Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;->trimOut:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    monitor-exit v0

    return v3

    :catchall_79
    move-exception p0

    goto/16 :goto_f8

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 502
    :cond_7f
    iget-object v2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_92

    .line 504
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p2

    goto :goto_9f

    :cond_92
    if-nez p1, :cond_9f

    .line 506
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEEditor;->getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p2}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p2

    .line 508
    :cond_9f
    :goto_9f
    iget-object v3, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p1

    if-gez p1, :cond_bf

    .line 510
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateClipsTimelineParam failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    monitor-exit v0

    return p1

    .line 513
    :cond_bf
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 515
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result p2

    invoke-virtual {p1, v1, p2, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 516
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_ed

    .line 518
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    monitor-exit v0

    return p0

    .line 521
    :cond_ed
    monitor-exit v0

    return v1

    .line 492
    :cond_ef
    :goto_ef
    const-string p0, "VEEditor_VESequenceInvoker"

    const-string p1, "updateClipsTimelineParam failed, clipIndexes not match clipTimelineParams"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    monitor-exit v0

    return v3

    .line 522
    :goto_f8
    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_3 .. :try_end_f9} :catchall_79

    throw p0
.end method

.method public updateSceneFileOrder(Lcom/ss/android/vesdk/VETimelineParams;)I
    .registers 6

    .line 193
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 194
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 196
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateSceneFileOrder(Lcom/ss/android/vesdk/VETimelineParams;)I

    move-result p1

    if-gez p1, :cond_2a

    .line 199
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSceneFileOrder failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    monitor-exit v0

    return p1

    :catchall_28
    move-exception p0

    goto :goto_71

    .line 202
    :cond_2a
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 203
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 205
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getBusinessManager()Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;->editorType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4a

    .line 206
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v1

    invoke-virtual {p1, v2, v1, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    goto :goto_4f

    .line 208
    :cond_4a
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, v2, p1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 210
    :goto_4f
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/VEEditor;->prepareWithCallback(I)I

    move-result p0

    if-eqz p0, :cond_6f

    .line 212
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare Engine failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    monitor-exit v0

    return p0

    .line 215
    :cond_6f
    monitor-exit v0

    return v2

    .line 216
    :goto_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_28

    throw p0
.end method

.method public updateSceneTime(Lcom/ss/android/vesdk/VETimelineParams;)I
    .registers 8

    .line 105
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSceneTime... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETimelineParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 107
    :try_start_1d
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 108
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateSenceTime(Lcom/ss/android/vesdk/VETimelineParams;)I

    move-result v1
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_4d

    const/4 v2, 0x0

    .line 110
    :try_start_29
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 111
    const-string v4, "resultCode"

    if-ltz v1, :cond_34

    move v5, v2

    goto :goto_35

    :cond_34
    move v5, v1

    :goto_35
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v4, "sceneTime"

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETimelineParams;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string p1, "vesdk_event_editor_update_scene_time"

    const-string v4, "behavior"

    invoke-static {p1, v3, v4}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_4c} :catch_4f
    .catchall {:try_start_29 .. :try_end_4c} :catchall_4d

    goto :goto_53

    :catchall_4d
    move-exception p0

    goto :goto_9e

    :catch_4f
    move-exception p1

    .line 115
    :try_start_50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_53
    if-gez v1, :cond_6d

    .line 118
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSceneTime failed, ret = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    monitor-exit v0

    return v1

    .line 121
    :cond_6d
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1, v2}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 124
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->updateFilters()V

    .line 126
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1, v2, v1, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 127
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    if-eqz p0, :cond_9c

    .line 129
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare Engine failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    monitor-exit v0

    return p0

    .line 132
    :cond_9c
    monitor-exit v0

    return v2

    .line 133
    :goto_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_50 .. :try_end_9f} :catchall_4d

    throw p0
.end method

.method public updateSceneTime(Lcom/ss/android/vesdk/VETimelineParams;II)I
    .registers 7

    .line 138
    const-string v0, "VEEditor_VESequenceInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSceneTime with start/end time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETimelineParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " endTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 140
    :try_start_2d
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 141
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateSenceTime(Lcom/ss/android/vesdk/VETimelineParams;)I

    move-result p1

    if-gez p1, :cond_54

    .line 143
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateSceneTime failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    monitor-exit v0

    return p1

    :catchall_52
    move-exception p0

    goto :goto_81

    .line 146
    :cond_54
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 148
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1, p2, p3, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 149
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    if-eqz p0, :cond_7f

    .line 151
    const-string p1, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    monitor-exit v0

    return p0

    .line 154
    :cond_7f
    monitor-exit v0

    return v1

    .line 155
    :goto_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_2d .. :try_end_82} :catchall_52

    throw p0
.end method

.method public updateSegmentVolume(IF)I
    .registers 5

    if-gez p1, :cond_5

    const/16 p0, -0x64

    return p0

    :cond_5
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_b

    move p2, v0

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_12

    move p2, v0

    .line 1076
    :cond_12
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "audio volume"

    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setFilterParam(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateVideoClips([Ljava/lang/String;[I[I)I
    .registers 7

    .line 597
    iget-object v0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    monitor-enter v0

    .line 598
    :try_start_3
    const-string v1, "VEEditor_VESequenceInvoker"

    const-string v2, "update video clips reinit..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 600
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEEditor;->setMusicSRTEffectFilterIndex(I)V

    .line 603
    iget-object v1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateScene([Ljava/lang/String;[I[I)I

    .line 605
    iget-object p2, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEEditor;->getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    move-result-object p2

    iput-object p1, p2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    .line 606
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor;->setMasterTrackIndex(I)V

    .line 607
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 609
    iget-object p1, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p1

    if-eqz p1, :cond_4f

    .line 611
    const-string p0, "VEEditor_VESequenceInvoker"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prepare Engine failed, ret = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    monitor-exit v0

    return p1

    :catchall_4d
    move-exception p0

    goto :goto_58

    .line 614
    :cond_4f
    iget-object p0, p0, Lcom/ss/android/vesdk/VESequenceInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    sget-object p1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/vesdk/VEEditor;->seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;)I

    .line 615
    monitor-exit v0

    return p2

    .line 616
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_4d

    throw p0
.end method
