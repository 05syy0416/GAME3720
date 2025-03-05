placed = false;

// 🔥 初始化索引（确保不同按钮有不同索引）
if (!variable_instance_exists(id, "index")) {
    index = irandom_range(0, 5); 
}

// 🎵 绑定音效
var sounds = [
    Part1_Celeste_Plucks_150,
    Part1_Guitar_Chops_150,
    Part1_Kicks_150,
    Part1_Snare_150,
    Part1_Sub_Bass_150,
    Part1_Vocal_Chop_150
];

// 🎨 绑定不同的 Sprite
var sprites = [
    spr_music_button1, spr_music_button2, spr_music_button3,
    spr_music_button4, spr_music_button5, spr_music_button6
];

// 确保索引在有效范围内
index = clamp(index, 0, array_length(sounds) - 1);

// 设定当前对象的声音和精灵
my_sound = sounds[index];
sprite_index = sprites[index];

// 🎯 预设按钮的可能位置
var positions = [
    [135, 90], [57, 366],   // 左上角，右上角
    [192, 508], [1053, 86], // 左下角，右下角
    [1246, 316], [1162, 489] // 上中，下中
];

// 确保索引在 `positions` 的有效范围内
index = clamp(index, 0, array_length(positions) - 1);
x = positions[index][0];
y = positions[index][1];

// 按钮大小缩小 50%
image_xscale = 0.1;
image_yscale = 0.1;

// 🔊 初始化音量
global.default_volume = 0.02;

// 🎶 初始化播放控制
hover_played = false;
dragging = false;  // 是否正在拖动
placed = false;    // 是否已放置

// 记录初始位置
original_x = x;
original_y = y;
