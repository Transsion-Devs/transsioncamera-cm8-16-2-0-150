.class public final Lcom/imaging/libwatermark/ai_art/ExifExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final allExifTags:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 136

    .line 148
    const-string v134, "YCbCrSubSampling"

    .line 149
    const-string v135, "YResolution"

    const-string v1, "ApertureValue"

    const-string v2, "Artist"

    const-string v3, "BitsPerSample"

    const-string v4, "BrightnessValue"

    const-string v5, "CFAPattern"

    const-string v6, "ColorSpace"

    const-string v7, "ComponentsConfiguration"

    const-string v8, "CompressedBitsPerPixel"

    const-string v9, "Compression"

    const-string v10, "Contrast"

    const-string v11, "Copyright"

    const-string v12, "CustomRendered"

    const-string v13, "DateTime"

    const-string v14, "DateTimeDigitized"

    const-string v15, "DateTimeOriginal"

    const-string v16, "DefaultCropSize"

    const-string v17, "DeviceSettingDescription"

    const-string v18, "DigitalZoomRatio"

    const-string v19, "DNGVersion"

    const-string v20, "ExifVersion"

    const-string v21, "ExposureBiasValue"

    const-string v22, "ExposureIndex"

    const-string v23, "ExposureMode"

    const-string v24, "ExposureProgram"

    const-string v25, "ExposureTime"

    const-string v26, "FNumber"

    const-string v27, "FileSource"

    const-string v28, "Flash"

    const-string v29, "FlashpixVersion"

    const-string v30, "FlashEnergy"

    const-string v31, "FocalLength"

    const-string v32, "FocalLengthIn35mmFilm"

    const-string v33, "FocalPlaneResolutionUnit"

    const-string v34, "FocalPlaneXResolution"

    const-string v35, "FocalPlaneYResolution"

    const-string v36, "FNumber"

    const-string v37, "GainControl"

    const-string v38, "GPSAltitude"

    const-string v39, "GPSAltitudeRef"

    const-string v40, "GPSAreaInformation"

    const-string v41, "GPSDateStamp"

    const-string v42, "GPSDestBearing"

    const-string v43, "GPSDestBearingRef"

    const-string v44, "GPSDestDistance"

    const-string v45, "GPSDestDistanceRef"

    const-string v46, "GPSDestLatitude"

    const-string v47, "GPSDestLatitudeRef"

    const-string v48, "GPSDestLongitude"

    const-string v49, "GPSDestLongitudeRef"

    const-string v50, "GPSDifferential"

    const-string v51, "GPSDOP"

    const-string v52, "GPSImgDirection"

    const-string v53, "GPSImgDirectionRef"

    const-string v54, "GPSLatitude"

    const-string v55, "GPSLatitudeRef"

    const-string v56, "GPSLongitude"

    const-string v57, "GPSLongitudeRef"

    const-string v58, "GPSMapDatum"

    const-string v59, "GPSMeasureMode"

    const-string v60, "GPSProcessingMethod"

    const-string v61, "GPSSatellites"

    const-string v62, "GPSSpeed"

    const-string v63, "GPSSpeedRef"

    const-string v64, "GPSStatus"

    const-string v65, "GPSTimeStamp"

    const-string v66, "GPSTrack"

    const-string v67, "GPSTrackRef"

    const-string v68, "GPSVersionID"

    const-string v69, "ImageDescription"

    const-string v70, "ImageLength"

    const-string v71, "ImageUniqueID"

    const-string v72, "ImageWidth"

    const-string v73, "InteroperabilityIndex"

    const-string v74, "ISOSpeedRatings"

    const-string v75, "JPEGInterchangeFormat"

    const-string v76, "JPEGInterchangeFormatLength"

    const-string v77, "LightSource"

    const-string v78, "Make"

    const-string v79, "MakerNote"

    const-string v80, "MaxApertureValue"

    const-string v81, "MeteringMode"

    const-string v82, "Model"

    const-string v83, "NewSubfileType"

    const-string v84, "OECF"

    const-string v85, "AspectFrame"

    const-string v86, "PreviewImageLength"

    const-string v87, "PreviewImageStart"

    const-string v88, "ThumbnailImage"

    const-string v89, "Orientation"

    const-string v90, "PhotometricInterpretation"

    const-string v91, "PixelXDimension"

    const-string v92, "PixelYDimension"

    const-string v93, "PlanarConfiguration"

    const-string v94, "PrimaryChromaticities"

    const-string v95, "ReferenceBlackWhite"

    const-string v96, "RelatedSoundFile"

    const-string v97, "ResolutionUnit"

    const-string v98, "RowsPerStrip"

    const-string v99, "ISO"

    const-string v100, "JpgFromRaw"

    const-string v101, "SensorBottomBorder"

    const-string v102, "SensorLeftBorder"

    const-string v103, "SensorRightBorder"

    const-string v104, "SensorTopBorder"

    const-string v105, "SamplesPerPixel"

    const-string v106, "Saturation"

    const-string v107, "SceneCaptureType"

    const-string v108, "SceneType"

    const-string v109, "SensingMethod"

    const-string v110, "Sharpness"

    const-string v111, "ShutterSpeedValue"

    const-string v112, "Software"

    const-string v113, "SpatialFrequencyResponse"

    const-string v114, "SpectralSensitivity"

    const-string v115, "StripByteCounts"

    const-string v116, "StripOffsets"

    const-string v117, "SubfileType"

    const-string v118, "SubjectArea"

    const-string v119, "SubjectDistance"

    const-string v120, "SubjectDistanceRange"

    const-string v121, "SubjectLocation"

    const-string v122, "SubSecTime"

    const-string v123, "SubSecTimeDigitized"

    const-string v124, "SubSecTimeOriginal"

    const-string v125, "ThumbnailImageLength"

    const-string v126, "ThumbnailImageWidth"

    const-string v127, "TransferFunction"

    const-string v128, "UserComment"

    const-string v129, "WhiteBalance"

    const-string v130, "WhitePoint"

    const-string v131, "XResolution"

    const-string v132, "YCbCrCoefficients"

    const-string v133, "YCbCrPositioning"

    filled-new-array/range {v1 .. v135}, [Ljava/lang/String;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/imaging/libwatermark/ai_art/ExifExtKt;->allExifTags:[Ljava/lang/String;

    return-void
.end method

.method public static final copyTo(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface;)V
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/imaging/libwatermark/ai_art/ExifExtKt;->allExifTags:[Ljava/lang/String;

    .line 13346
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 8
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    if-eqz v4, :cond_25

    .line 9
    invoke-virtual {p1, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_28
    return-void
.end method
