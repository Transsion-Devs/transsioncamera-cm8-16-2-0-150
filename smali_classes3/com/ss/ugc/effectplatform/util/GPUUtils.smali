.class public final Lcom/ss/ugc/effectplatform/util/GPUUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils;

.field private static final gpuInfo$delegate:Lkotlin/Lazy;

.field private static final sAdrenoGpuFreqMap:Landroid/util/SparseArray;

.field private static final sAdrenoSerialPattern:Ljava/util/regex/Pattern;

.field private static final sMaliGpuFreqMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 20
    new-instance v0, Lcom/ss/ugc/effectplatform/util/GPUUtils;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/GPUUtils;->INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/GPUUtils;->sMaliGpuFreqMap:Ljava/util/HashMap;

    .line 29
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/ss/ugc/effectplatform/util/GPUUtils;->sAdrenoGpuFreqMap:Landroid/util/SparseArray;

    .line 31
    const-string v2, "\\d+$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/ss/ugc/effectplatform/util/GPUUtils;->sAdrenoSerialPattern:Ljava/util/regex/Pattern;

    .line 65
    sget-object v2, Lcom/ss/ugc/effectplatform/util/GPUUtils$gpuInfo$2;->INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils$gpuInfo$2;

    invoke-static {v2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    sput-object v2, Lcom/ss/ugc/effectplatform/util/GPUUtils;->gpuInfo$delegate:Lkotlin/Lazy;

    const/4 v2, 0x3

    .line 97
    new-array v3, v2, [F

    fill-array-data v3, :array_19a

    const-string v4, "mali-g72"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-array v3, v2, [F

    fill-array-data v3, :array_1a4

    const-string v4, "mali-g71"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-array v3, v2, [F

    fill-array-data v3, :array_1ae

    const-string v4, "mali-t880"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-array v3, v2, [F

    fill-array-data v3, :array_1b8

    const-string v4, "mali-t860"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-array v3, v2, [F

    fill-array-data v3, :array_1c2

    const-string v4, "mali-t760"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-array v3, v2, [F

    fill-array-data v3, :array_1cc

    const-string v4, "mali-g51"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-array v3, v2, [F

    fill-array-data v3, :array_1d6

    const-string v4, "mali-t830"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-array v3, v2, [F

    fill-array-data v3, :array_1e0

    const-string v4, "mali-t820"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-array v3, v2, [F

    fill-array-data v3, :array_1ea

    const-string v4, "mali-t720"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-array v3, v2, [F

    fill-array-data v3, :array_1f4

    const-string v4, "mali-t470"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-array v3, v2, [F

    fill-array-data v3, :array_1fe

    const-string v4, "mali-t450"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-array v3, v2, [F

    fill-array-data v3, :array_208

    const-string v4, "mali-t400"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-array v3, v2, [F

    fill-array-data v3, :array_212

    const-string v4, "mali-400 mp"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-array v3, v2, [F

    fill-array-data v3, :array_21c

    const-string v4, "mali-450 mp"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-array v0, v2, [F

    fill-array-data v0, :array_226

    const/16 v3, 0xc8

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    new-array v0, v2, [F

    fill-array-data v0, :array_230

    const/16 v3, 0xcb

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    new-array v0, v2, [F

    fill-array-data v0, :array_23a

    const/16 v3, 0xcd

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    new-array v0, v2, [F

    fill-array-data v0, :array_244

    const/16 v3, 0xdc

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    new-array v0, v2, [F

    fill-array-data v0, :array_24e

    const/16 v3, 0xe1

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    new-array v0, v2, [F

    fill-array-data v0, :array_258

    const/16 v3, 0x12e

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    new-array v0, v2, [F

    fill-array-data v0, :array_262

    const/16 v3, 0x130

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    new-array v0, v2, [F

    fill-array-data v0, :array_26c

    const/16 v3, 0x131

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    new-array v0, v2, [F

    fill-array-data v0, :array_276

    const/16 v3, 0x132

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    new-array v0, v2, [F

    fill-array-data v0, :array_280

    const/16 v3, 0x134

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    new-array v0, v2, [F

    fill-array-data v0, :array_28a

    const/16 v3, 0x140

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    new-array v0, v2, [F

    fill-array-data v0, :array_294

    const/16 v3, 0x14a

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    new-array v0, v2, [F

    fill-array-data v0, :array_29e

    const/16 v3, 0x195

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    new-array v0, v2, [F

    fill-array-data v0, :array_2a8

    const/16 v3, 0x1a2

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    new-array v0, v2, [F

    fill-array-data v0, :array_2b2

    const/16 v3, 0x1a4

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    new-array v0, v2, [F

    fill-array-data v0, :array_2bc

    const/16 v3, 0x1ae

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    new-array v0, v2, [F

    fill-array-data v0, :array_2c6

    const/16 v3, 0x1f9

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    new-array v0, v2, [F

    fill-array-data v0, :array_2d0

    const/16 v3, 0x1fa

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    new-array v0, v2, [F

    fill-array-data v0, :array_2da

    const/16 v3, 0x1fc

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    new-array v0, v2, [F

    fill-array-data v0, :array_2e4

    const/16 v3, 0x1fe

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    new-array v0, v2, [F

    fill-array-data v0, :array_2ee

    const/16 v3, 0x200

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    new-array v0, v2, [F

    fill-array-data v0, :array_2f8

    const/16 v3, 0x212

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    new-array v0, v2, [F

    fill-array-data v0, :array_302

    const/16 v2, 0x21c

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    nop

    :array_19a
    .array-data 4
        0x44548000    # 850.0f
        0x44548000    # 850.0f
        0x41d9999a    # 27.2f
    .end array-data

    :array_1a4
    .array-data 4
        0x44548000    # 850.0f
        0x44548000    # 850.0f
        0x41d9999a    # 27.2f
    .end array-data

    :array_1ae
    .array-data 4
        0x44548000    # 850.0f
        0x44548000    # 850.0f
        0x4159999a    # 13.6f
    .end array-data

    :array_1b8
    .array-data 4
        0x44228000    # 650.0f
        0x44228000    # 650.0f
        0x41266666    # 10.4f
    .end array-data

    :array_1c2
    .array-data 4
        0x44228000    # 650.0f
        0x44228000    # 650.0f
        0x41266666    # 10.4f
    .end array-data

    :array_1cc
    .array-data 4
        0x44228000    # 650.0f
        0x44228000    # 650.0f
        0x4079999a    # 3.9f
    .end array-data

    :array_1d6
    .array-data 4
        0x44228000    # 650.0f
        0x44228000    # 650.0f
        0x40266666    # 2.6f
    .end array-data

    :array_1e0
    .array-data 4
        0x44228000    # 650.0f
        0x44228000    # 650.0f
        0x40266666    # 2.6f
    .end array-data

    :array_1ea
    .array-data 4
        0x44228000    # 650.0f
        0x44228000    # 650.0f
        0x40a66666    # 5.2f
    .end array-data

    :array_1f4
    .array-data 4
        0x437a0000    # 250.0f
        0x44228000    # 650.0f
        0x3f266666    # 0.65f
    .end array-data

    :array_1fe
    .array-data 4
        0x43870000    # 270.0f
        0x44228000    # 650.0f
        0x40a66666    # 5.2f
    .end array-data

    :array_208
    .array-data 4
        0x43520000    # 210.0f
        0x43fa0000    # 500.0f
        0x40000000    # 2.0f
    .end array-data

    :array_212
    .array-data 4
        0x43520000    # 210.0f
        0x43fa0000    # 500.0f
        0x40000000    # 2.0f
    .end array-data

    :array_21c
    .array-data 4
        0x43520000    # 210.0f
        0x43fa0000    # 500.0f
        0x40266666    # 2.6f
    .end array-data

    :array_226
    .array-data 4
        0x43480000    # 200.0f
        0x43750000    # 245.0f
        0x41000000    # 8.0f
    .end array-data

    :array_230
    .array-data 4
        0x43750000    # 245.0f
        0x43930000    # 294.0f
        0x41800000    # 16.0f
    .end array-data

    :array_23a
    .array-data 4
        0x43610000    # 225.0f
        0x43750000    # 245.0f
        0x41800000    # 16.0f
    .end array-data

    :array_244
    .array-data 4
        0x43850000    # 266.0f
        0x43850000    # 266.0f
        0x42000000    # 32.0f
    .end array-data

    :array_24e
    .array-data 4
        0x43c80000    # 400.0f
        0x43c80000    # 400.0f
        0x42000000    # 32.0f
    .end array-data

    :array_258
    .array-data 4
        0x43c80000    # 400.0f
        0x43c80000    # 400.0f
        0x41c00000    # 24.0f
    .end array-data

    :array_262
    .array-data 4
        0x43c80000    # 400.0f
        0x43c80000    # 400.0f
        0x41c00000    # 24.0f
    .end array-data

    :array_26c
    .array-data 4
        0x43c80000    # 400.0f
        0x43e10000    # 450.0f
        0x41c00000    # 24.0f
    .end array-data

    :array_276
    .array-data 4
        0x43c80000    # 400.0f
        0x43c80000    # 400.0f
        0x41c00000    # 24.0f
    .end array-data

    :array_280
    .array-data 4
        0x43fa0000    # 500.0f
        0x43fa0000    # 500.0f
        0x41c00000    # 24.0f
    .end array-data

    :array_28a
    .array-data 4
        0x43e10000    # 450.0f
        0x43e10000    # 450.0f
        0x42c00000    # 96.0f
    .end array-data

    :array_294
    .array-data 4
        0x44108000    # 578.0f
        0x44108000    # 578.0f
        0x43000000    # 128.0f
    .end array-data

    :array_29e
    .array-data 4
        0x44098000    # 550.0f
        0x44098000    # 550.0f
        0x42400000    # 48.0f
    .end array-data

    :array_2a8
    .array-data 4
        0x44160000    # 600.0f
        0x44160000    # 600.0f
        0x43000000    # 128.0f
    .end array-data

    :array_2b2
    .array-data 4
        0x44160000    # 600.0f
        0x44160000    # 600.0f
        0x43000000    # 128.0f
    .end array-data

    :array_2bc
    .array-data 4
        0x43fa0000    # 500.0f
        0x44228000    # 650.0f
        0x43400000    # 192.0f
    .end array-data

    :array_2c6
    .array-data 4
        0x43e10000    # 450.0f
        0x43e10000    # 450.0f
        0x42400000    # 48.0f
    .end array-data

    :array_2d0
    .array-data 4
        0x44228000    # 650.0f
        0x44228000    # 650.0f
        0x42c00000    # 96.0f
    .end array-data

    :array_2da
    .array-data 4
        0x44548000    # 850.0f
        0x44548000    # 850.0f
        0x42c00000    # 96.0f
    .end array-data

    :array_2e4
    .array-data 4
        0x44160000    # 600.0f
        0x44160000    # 600.0f
        0x43000000    # 128.0f
    .end array-data

    :array_2ee
    .array-data 4
        0x44160000    # 600.0f
        0x44548000    # 850.0f
        0x43000000    # 128.0f
    .end array-data

    :array_2f8
    .array-data 4
        0x44228000    # 650.0f
        0x44228000    # 650.0f
        0x43800000    # 256.0f
    .end array-data

    :array_302
    .array-data 4
        0x44318000    # 710.0f
        0x44318000    # 710.0f
        0x43800000    # 256.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$generateGPUInfo(Lcom/ss/ugc/effectplatform/util/GPUUtils;)Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->generateGPUInfo()Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;

    move-result-object p0

    return-object p0
.end method

.method private final generateGPUInfo()Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;
    .registers 9

    .line 215
    new-instance v1, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;

    invoke-direct {v1}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;-><init>()V

    .line 217
    :try_start_5
    new-instance v0, Lcom/ss/ugc/effectplatform/util/EGLUtils;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/EGLUtils;-><init>()V

    const/16 v2, 0x10

    .line 218
    invoke-virtual {v0, v2, v2}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->eglInit(II)V

    .line 219
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->getGl10()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    if-eqz v2, :cond_52

    const/16 v3, 0x1f00

    .line 220
    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.glGetString(GL10.GL_VENDOR)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->setVendor(Ljava/lang/String;)V

    const/16 v3, 0x1f02

    .line 221
    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.glGetString(GL10.GL_VERSION)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->setVersion(Ljava/lang/String;)V

    const/16 v3, 0x1f01

    .line 222
    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.glGetString(GL10.GL_RENDERER)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->setRenderer(Ljava/lang/String;)V

    const/16 v3, 0x1f03

    .line 223
    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.glGetString(GL10.GL_EXTENSIONS)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->setGlExtension(Ljava/lang/String;)V

    goto :goto_52

    :catchall_4e
    move-exception v0

    move-object p0, v0

    goto/16 :goto_10f

    .line 225
    :cond_52
    :goto_52
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/util/EGLUtils;->destroy()V

    .line 227
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v2, "OpenGL ES"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    if-eqz v0, :cond_de

    const/16 v2, 0x9

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_d6

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v2, " "

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v5}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v2

    .line 671
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_b4

    .line 303
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 304
    :goto_95
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 305
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 230
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_a8

    goto :goto_95

    .line 306
    :cond_a8
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    goto :goto_b8

    .line 310
    :cond_b4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_b8
    check-cast v2, Ljava/util/Collection;

    .line 38
    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_ce

    .line 230
    check-cast v2, [Ljava/lang/String;

    .line 231
    array-length v3, v2

    if-nez v3, :cond_c8

    goto :goto_c9

    :cond_c8
    move v4, v5

    :goto_c9
    if-nez v4, :cond_e6

    .line 232
    aget-object v0, v2, v5

    goto :goto_e6

    .line 38
    :cond_ce
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 229
    :cond_d6
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_de
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 235
    :cond_e6
    :goto_e6
    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->setVersion(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->getRenderer()Ljava/lang/String;

    move-result-object v0

    const-string v2, "max"

    invoke-direct {p0, v0, v2}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getGpuMHz(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->setMaxFreq(I)V

    .line 237
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->getRenderer()Ljava/lang/String;

    move-result-object v0

    const-string v2, "min"

    invoke-direct {p0, v0, v2}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getGpuMHz(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->setMinFreq(I)V

    .line 238
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->getRenderer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getAlusOrThroughput(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->setAlusOrThroughput(D)V
    :try_end_10e
    .catchall {:try_start_5 .. :try_end_10e} :catchall_4e

    return-object v1

    .line 240
    :goto_10f
    sget-object v2, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get gpu info error:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "GPUUtils"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1
.end method

.method private final getAdrenoGpuFreq(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    .line 153
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getAdrenoSerial(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-lez p0, :cond_15

    .line 155
    sget-object v0, Lcom/ss/ugc/effectplatform/util/GPUUtils;->sAdrenoGpuFreqMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_15

    .line 157
    aget p0, v0, p1

    float-to-int p0, p0

    return p0

    .line 162
    :cond_15
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/devfreq/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ss/ugc/effectplatform/util/GPUUtils$getAdrenoGpuFreq$kgslPaths$1;->INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils$getAdrenoGpuFreq$kgslPaths$1;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_ae

    .line 166
    array-length v1, v0

    if-nez v1, :cond_29

    goto/16 :goto_ae

    .line 277
    :cond_29
    array-length p0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2c
    if-ge v2, p0, :cond_ac

    aget-object v3, v0, v2

    .line 169
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_freq"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 172
    :try_start_47
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_51} :catch_a4
    .catchall {:try_start_47 .. :try_end_51} :catchall_9d

    .line 173
    :try_start_51
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 174
    const-string v4, "freqStr"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, p1

    move v6, v1

    move v7, v6

    :goto_61
    if-gt v6, v4, :cond_87

    if-nez v7, :cond_67

    move v8, v6

    goto :goto_68

    :cond_67
    move v8, v4

    .line 285
    :goto_68
    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-gt v8, v9, :cond_72

    move v8, p1

    goto :goto_73

    :cond_72
    move v8, v1

    :goto_73
    if-nez v7, :cond_7c

    if-nez v8, :cond_79

    move v7, p1

    goto :goto_61

    :cond_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    :cond_7c
    if-nez v8, :cond_7f

    goto :goto_87

    :cond_7f
    add-int/lit8 v4, v4, -0x1

    goto :goto_61

    :catchall_82
    move-exception p0

    move-object v3, v5

    goto :goto_9e

    :catch_85
    move-object v3, v5

    goto :goto_a4

    :cond_87
    :goto_87
    add-int/lit8 v4, v4, 0x1

    .line 300
    invoke-interface {v3, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 278
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v4, 0xf4240

    div-int/2addr v3, v4
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_99} :catch_85
    .catchall {:try_start_51 .. :try_end_99} :catchall_82

    .line 178
    :try_start_99
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9c

    :catch_9c
    return v3

    :catchall_9d
    move-exception p0

    :goto_9e
    if-eqz v3, :cond_a3

    :try_start_a0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a3

    .line 180
    :catch_a3
    :cond_a3
    throw p0

    :catch_a4
    :goto_a4
    if-eqz v3, :cond_a9

    .line 178
    :try_start_a6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_a9

    :catch_a9
    :cond_a9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_ac
    const/4 p0, -0x1

    return p0

    :cond_ae
    :goto_ae
    add-int/lit16 p0, p0, 0xc8

    return p0
.end method

.method private final getAdrenoSerial(Ljava/lang/String;)I
    .registers 3

    .line 187
    sget-object p0, Lcom/ss/ugc/effectplatform/util/GPUUtils;->sAdrenoSerialPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_22

    const/4 p1, 0x0

    .line 190
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 191
    const-string p1, "serial"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_22

    .line 192
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_22
    return v0
.end method

.method private final getGpuInfo()Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;
    .registers 1

    sget-object p0, Lcom/ss/ugc/effectplatform/util/GPUUtils;->gpuInfo$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;

    return-object p0
.end method

.method private final getGpuMHz(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    if-eqz p1, :cond_38

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "mali"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getMaliGpuFreq(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 87
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adreno"

    invoke-static {v0, v2, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getAdrenoGpuFreq(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_37
    return v1

    .line 85
    :cond_38
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getMaliGpuFreq(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 148
    sget-object p0, Lcom/ss/ugc/effectplatform/util/GPUUtils;->sMaliGpuFreqMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    if-eqz p0, :cond_1b

    const-string p1, "min"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    aget p0, p0, p1

    goto :goto_19

    :cond_16
    const/4 p1, 0x1

    aget p0, p0, p1

    :goto_19
    float-to-int p0, p0

    return p0

    :cond_1b
    const/16 p0, 0x352

    return p0
.end method


# virtual methods
.method public final getAlusOrThroughput(Ljava/lang/String;)D
    .registers 8

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4b

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mali"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 202
    sget-object p0, Lcom/ss/ugc/effectplatform/util/GPUUtils;->sMaliGpuFreqMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, [F

    goto :goto_45

    .line 203
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adreno"

    invoke-static {v0, v1, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 204
    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getAdrenoSerial(Ljava/lang/String;)I

    move-result p0

    .line 205
    sget-object p1, Lcom/ss/ugc/effectplatform/util/GPUUtils;->sAdrenoGpuFreqMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, [F

    :cond_45
    :goto_45
    if-eqz v5, :cond_4b

    .line 208
    aget p0, v5, v4

    float-to-double p0, p0

    return-wide p0

    :cond_4b
    const/4 p0, -0x1

    int-to-double p0, p0

    return-wide p0
.end method

.method public final getGlExtension()Ljava/lang/String;
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getGpuInfo()Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->getGlExtension()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRenderer()Ljava/lang/String;
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getGpuInfo()Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->getRenderer()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVendor()Ljava/lang/String;
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getGpuInfo()Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->getVendor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils;->getGpuInfo()Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/util/GPUUtils$GPUInfo;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
