.class Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameSelectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;Landroid/os/Looper;)V
    .registers 3

    .line 230
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    .line 231
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;-><init>(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 236
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recognize msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", START"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_ce

    const/4 v6, 0x2

    if-eq v2, v5, :cond_6d

    if-eq v2, v6, :cond_30

    goto/16 :goto_199

    .line 253
    :cond_30
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unInitHighLight START, mInitialed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v6}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fgetmInitialed(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fgetmInitialed(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 255
    sget-object v2, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/HLSDK;->release()V

    .line 256
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fputmInitialed(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;Z)V

    .line 258
    :cond_61
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string/jumbo v2, "unInitHighLight END"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_199

    .line 239
    :cond_6d
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initHighLight START, mInitialed: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fgetmInitialed(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    new-instance v2, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;

    invoke-direct {v2}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;-><init>()V

    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/engine/HLMTemplateProvider;

    invoke-direct {v3}, Lcom/transsion/camera/feature/mode/vlog/engine/HLMTemplateProvider;-><init>()V

    .line 242
    invoke-virtual {v2, v3}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->setTemplateProvider(Lcom/volcengine/ck/highlight/api/ITemplateProvider;)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/engine/HLResourceFinder;

    invoke-direct {v3}, Lcom/transsion/camera/feature/mode/vlog/engine/HLResourceFinder;-><init>()V

    .line 243
    invoke-virtual {v2, v3}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->setResourceFinder(Lcom/volcengine/ck/highlight/api/IHLResourceFinder;)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/engine/HLTemplateFinder;

    invoke-direct {v3}, Lcom/transsion/camera/feature/mode/vlog/engine/HLTemplateFinder;-><init>()V

    .line 244
    invoke-virtual {v2, v3}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->setTemplateFinder(Lcom/volcengine/ck/highlight/api/ITemplateFinder;)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;

    move-result-object v2

    .line 245
    invoke-virtual {v2, v6}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->setMinRequireDockerSize(I)Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;

    move-result-object v2

    .line 246
    invoke-virtual {v2}, Lcom/volcengine/ck/highlight/config/HLSDKConfig$Builder;->build()Lcom/volcengine/ck/highlight/config/HLSDKConfig;

    move-result-object v2

    .line 247
    sget-object v3, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Application;

    invoke-virtual {v3, v6, v2}, Lcom/volcengine/ck/highlight/HLSDK;->init(Landroid/app/Application;Lcom/volcengine/ck/highlight/config/HLSDKConfig;)V

    .line 249
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    const-string v3, "initHighLight END"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 250
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v0, v5}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fputmInitialed(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;Z)V

    goto/16 :goto_199

    .line 261
    :cond_ce
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;

    .line 262
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->getWidth()I

    move-result v9

    .line 263
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->getHeight()I

    move-result v10

    .line 264
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->getPtsMs()J

    move-result-wide v6

    .line 265
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/FrameSelectInfo;->getYuvBytes()[B

    move-result-object v2

    .line 266
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v8

    const-string v11, "recognize START"

    invoke-static {v8, v11}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-virtual {v8}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_f9

    move v14, v5

    goto :goto_fa

    :cond_f9
    move v14, v3

    :goto_fa
    const v3, 0x7e9000

    .line 269
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-wide v5, v6

    .line 270
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    iget-object v8, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fgetmVideoHintOrientation(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)I

    move-result v11

    .line 271
    invoke-static {v8, v11, v14}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$mgetTransformOrientation(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;IZ)I

    move-result v13

    const/4 v8, 0x7

    const/16 v11, 0x780

    const/16 v12, 0x438

    move-object v15, v3

    move-wide/from16 v16, v5

    move-object v6, v2

    move-wide/from16 v2, v16

    .line 270
    invoke-static/range {v6 .. v14}, Lcom/effectsar/labcv/effectsdk/YUVUtils;->YUV2RGBA([B[BIIIIIIZ)V

    .line 273
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fgetmVideoHintOrientation(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)I

    move-result v5

    rem-int/lit16 v5, v5, 0xb4

    const/16 v6, 0x438

    const/16 v7, 0x780

    if-nez v5, :cond_136

    move v5, v7

    goto :goto_137

    :cond_136
    move v5, v6

    .line 274
    :goto_137
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fgetmVideoHintOrientation(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)I

    move-result v8

    rem-int/lit16 v8, v8, 0xb4

    if-nez v8, :cond_142

    goto :goto_143

    :cond_142
    move v6, v7

    .line 275
    :goto_143
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 277
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 285
    iget-object v8, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fgetmInitialed(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)Z

    move-result v8

    if-eqz v8, :cond_18d

    .line 286
    sget-object v8, Lcom/volcengine/ck/highlight/HLSDK;->INSTANCE:Lcom/volcengine/ck/highlight/HLSDK;

    long-to-int v2, v2

    invoke-virtual {v8, v5, v6, v2, v7}, Lcom/volcengine/ck/highlight/HLSDK;->recognize(III[B)Lcom/volcengine/ck/highlight/data/HLResult;

    move-result-object v2

    .line 287
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fgetmHLResults(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recognize END, result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "mHLResults size: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect$FrameSelectHandler;->this$0:Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$fgetmHLResults(Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_196

    .line 290
    :cond_18d
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v2, "highlight is not initialed"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    :goto_196
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 301
    :goto_199
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", END"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
